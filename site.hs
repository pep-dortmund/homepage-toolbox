{-# LANGUAGE OverloadedStrings #-}

import Control.Applicative
import Data.Monoid (mconcat)

import Hakyll

main = hakyllWith defaultConfiguration $ do
  match "img/*" $ do
    route   idRoute
    compile copyFileCompiler

  match "css/*" $ do
    route   idRoute
    compile compressCssCompiler

  match "js/*" $ do
    route   idRoute
    compile copyFileCompiler

  match "files/**" $ do
    route   idRoute
    compile copyFileCompiler

  match "templates/*" $ compile templateCompiler

  match ("*.md" .&&. complement "README.md") $ do
    route $ setExtension "html"
    compile $ pandocCompiler
      >>= loadAndApplyTemplate "templates/default.html" context
      >>= relativizeUrls


context = mconcat
  [ field "navbar" navbarCompiler
  , defaultContext
  ]

navbar =  [ ("Über",         "/about.html")
          , ("Installation", "/install.html")
          , ("Material",     "/notes.html")
          , ("Links",        "/links.html")
          , ("Archiv",       "/archive.html")
          ]

navbarCompiler item = do
  -- Get the url of this page
  url <- fmap (maybe empty toUrl) $ getRoute $ itemIdentifier item
  return $ generateNavbar url

generateNavbar url = concat $ do
  (t, l) <- navbar
  -- if the url matches, this tab is active
  let cl = if l == url
        then "class=\"active\""
        else ""
  return $ concat ["<li ", cl, "><a href=\"", l, "\">", t, "</a></li>\n"]
