---
title: Fehlendes Mikro-Zeichen
author: <a href="https://github.com/maxnoe/">maxnoe</a>
---

In der finalen Version von TeXLive 2017 gibt es einen Bug mit
der Kombination aus `unicode-math` und `siunitx`, wie wir
sie im Toolbox Workshop vorgestellt haben: Das Mikro-Zeichen fehlt.


Um das Problem zu lösen, muss man siunitx mitteilen,
welches Symbol es für das Mikro nutzen soll:
```
\usepackge[locale=DE, ...]{siunitx}
\sisetup{math-micro=\text{µ},text-micro=µ}
```

Das Symbol ist [Unicode Character 'MICRO SIGN (U+00B5)'](https://www.fileformat.info/info/unicode/char/00b5/index.htm)
