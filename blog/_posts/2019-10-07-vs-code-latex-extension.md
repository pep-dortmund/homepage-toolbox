---
title: Fortgeschrittene vscode-Extension für LaTeX
author: Ludwig Neste
---
In der Installationsanleitung wird die LaTeX-Extension `LaTeX language support` installiert.
Diese kann Syntax Highlighting (Passende Einfärbung des LaTeX-Textes, für die Übersichtlichkeit), Snippets (Kleinere LaTeX-Code-Auszüge, die man häufig verwendet, sodass man diese nicht andauernd tippen muss, sondern z.B. mit `str`+`leertaste` snippets auswählen kann) und folding (z.B. Verstecken einer Mathe-Umgebung, für die Übersichtlichkeit).

Es gibt allerdings eine noch viel mächtigere Extension, die euch die Arbeit mit LaTeX in vscode erleichtert. Diese heißt `LaTex Workshop` von James Yu. Dieses kann alles, was auch `LaTeX language support` kann, jedoch zusätlich noch: PDFs anzeigen, code-completion mit intellisense 
(zeigt dir an, was du mit deinem angefangenen code meinen könntest, z.B.: tippe `\autoref{fig:` -> zeigt dir alle Referenz mit `fig:` beginnend an.) und es zeigt dir sogar eine Vorschau der Mathe-Sachen die du gerade tippst (FYI: mit [MathJax](https://www.mathjax.org/)). 
Das ganze Add-On kann noch vieles mehr, und wer interessiert ist, sollte sich definitiv mit dem ganzen genauer beschäftigen (Stichworte [SynchTex](https://github.com/James-Yu/LaTeX-Workshop/wiki/View) und [Linting](https://github.com/James-Yu/LaTeX-Workshop/wiki/Linters)).

Da wir jedoch immernoch die im Toolbox-Workshop gelernte Toolchain benutzen wollen, müssen wir die Extension daran hindern, dass sie die LaTeX-Dokumente selber baut. (Es ist auch möglich, die Extension so zu konfigurieren, dass sie die genau so baut, wie ihr das auch machen würdet, immer wenn ihr abspeichert. Das müsst ihr aber selbst herausfinden. &#x1f61c;)

**Jetzt aber zur eigentlichen Installationsanleitung:**

- Mit `ctr+shift+x` (oder mit dem Icon in der linken Leiste) die Extensions öffnen
- `LaTeX Workshop` suchen
- `LaTeX Workshop` von James Yu anklicken
- `Install` anklicken
- **WICHTIG**: Immer nur eine einzige LaTeX-Extension installieren!
    - Falls ihr noch eine andere installiert habt: Nach dieser Suchen, oder Suchtext entfernen und dann bekommt ihr alle installierten Extensions angezeigt. Anschließend die nicht gewünschte entfernen.
- In den Einstellungen muss jetzt noch das automatische Kompilieren der Extension ausgestellt werden, damit die Vorlagen des Toolbox-Workshop auch problemlos bauen.
- Dazu in die `Settings` gehen (`File`->`Preferences`->`Settings` oder Zahnrad links unten anklicken und `Settings` wählen.)
- `latex auto build clean and retry` suchen und Häkchen entfernen
- `latex auto build run` suchen und im Drop-Down-Menü `never` einstellen 

Jetzt seid ihr dem [WYSIWYG](https://en.wikipedia.org/wiki/WYSIWYG) sehr nahe!

Hier noch zwei Extensions, die euch das Leben erheblich vereinfachen: 
- `Code Spell Checker` mit `German - Code Spell Checker` beides von `Street Side Software` - Rechtschreibprüfung
- `Python` von `Microsoft` - Ähnlich mächtig wie LaTeX Workshop nur für Python
