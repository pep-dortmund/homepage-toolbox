---
title: Änderungen beim Update auf conda >= 4.4
author: mnoethe
---

Die Art und Weise, wie ihr `conda` in euren `PATH` einfügen solltet,
hat sich in `conda >= 4.4` geändert.

Ihr solltet die Zeile

{% highlight bash %}
export PATH="/path/to/anaconda/bin:$PATH"
{% endhighlight %}

Ersetzen durch

{% highlight bash %}
source "/path/to/anaconda/etc/profile.d/conda.sh"
conda activate
{% endhighlight %}

Dies ermöglicht die bessere Nutzung von `conda` environments und das vollständige
deaktivieren mit `conda deactivate`.
