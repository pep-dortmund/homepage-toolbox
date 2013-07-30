{-# LANGUAGE OverloadedStrings #-}

import Control.Applicative
import Control.Monad
import Data.Monoid ((<>), mappend, mconcat)
import qualified Data.Map

import Text.Pandoc
import Hakyll
import Hakyll.Web.Pandoc

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

  match "files/*" $ do
    route   idRoute
    compile copyFileCompiler

  match "templates/*" $ compile templateCompiler

  match "*.html" $ do
    route idRoute
    compile $ do
      getResourceBody
        >>= loadAndApplyTemplate "templates/default.html" postCtx
        >>= relativizeUrls

  match "*.md" $ do
    route $ setExtension "html"
    compile $  myPandocC
      >>= loadAndApplyTemplate "templates/default.html" postCtx
      >>= relativizeUrls

postCtx :: Context String
postCtx = mconcat
  [ mathjaxCtx
  , dateField "date" "%B %e, %Y"
  , defaultContext
  ]

myPandocC = pandocCompilerWith defaultHakyllReaderOptions pandocOptions

postList :: ([Item String] -> Compiler [Item String]) -> Compiler String
postList sortFilter = do
  posts    <- loadAll "posts/*"
  filtered <- sortFilter posts
  itemTpl  <- loadBody "templates/post-item.html"
  list     <- applyTemplateList itemTpl postCtx filtered
  return list

pandocOptions = defaultHakyllWriterOptions
  { writerHTMLMathMethod = MathJax ""
  }

myFeedConfiguration = FeedConfiguration
    { feedTitle       = "PeP et al. Toolbox-Workshop"
    , feedDescription = "Der Toolbox-Workshop"
    , feedAuthorName  = "Igor Babuschkin"
    , feedAuthorEmail = "igor@babushk.in"
    , feedRoot        = "http://toolbox.pep-dortmund.de/"
    }

mathjaxCtx = field "mathjax" $ \item -> do
  metadata <- getMetadata (itemIdentifier item)
  return $ case Data.Map.lookup "math" metadata of
    Just "true" -> "<script type=\"text/x-mathjax-config\">MathJax.Hub.Config({messageStyle: \"none\",});</script>\
                   \<script type=\"text/javascript\" src=\"http://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML\" />"
    Just _ -> ""
    Nothing -> ""
  
