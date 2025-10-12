---
title: <code>\input{...}</code> in der <code>tblr</code> Umgebung
author: aknierim
---
Mit dem LaTeX-Paket `functional` ist es möglich, den Tabelleninhalt einer
`tblr` Umgebung aus dem [`tabularray`](http://mirrors.ctan.org/macros/latex/contrib/tabularray/tabularray.pdf)
Paket in eine separate Datei auszulagern.

Dazu muss zunächst die `tabularray` Library `functional` geladen werden:

```
\usepackage{tabularray}
\UseTblrLibrary{functional}
```

Danach kann in der Tabelle der Inhalt einer separaten Datei eingelesen werden:

```
\begin{tblr}[evaluate=\fileInput]{
    colspec = {c c}
  }
  Column 1 & Column 2 \\
  \fileInput{table-body.tex}
\end{tblr}
```

Anstelle des `\input{...}` Befehls verwenden wir hier den `\fileInput{...}`
Befehl von `functional`, der mit der gleichnamigen Library für `tabularray`
geladen wird. Wichtig ist hierbei der Key `evaluate` in den optionalen Argumenten
der `tblr` Umgebung. Dieser sorgt dafür, dass der Befehl `\fileInput{...}` evaluiert
und das Ergebnis in der Tabelle gespeichert wird. Mehr Informationen dazu gibt es
in der [Dokumentation zu `tabularray` in Abschnitt 5.5.2]((http://mirrors.ctan.org/macros/latex/contrib/tabularray/tabularray.pdf)).
