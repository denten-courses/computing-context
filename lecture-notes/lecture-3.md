# Lecture 2: Style

## Package Management using Package Management

```
# install pip
sudo easy_install pip` (Mac)
sudo apt-get install pip` (Ubuntu/Debian)

# what is sudo?
```

## Libraries and frameworks

```
# install nltk
$ sudo pip install -U numpy
$ sudo pip install nltk
$ sudo pip install matplotlib

# what is a library? what is a framework?
```

## Getting started with NLTK**

```
$ ipython

# from here on everything is in iPython
# import the library and dowload a corpus
import nltk
nltk.download()

# import book corpus
`from nltk.book import *

# EDA (explore)
texts()
sents()
text1
text2

# iPython friends <tab> and ?

# concordance and other methods
text1.condordance("awesome")
text1.similar("monstrous")

# other words?

# common contexts
text1.common_contexts(["whale", "captain"])

# plotting
text1.dispersion_plot(["whale", "captain", "ship", "pulpit"])

# tokens (words or distinct strings)
# includes things like :)
len(text1)

# types (unique words)
text1.count("whale")
len(text1)
sorted(set(text1))
len(set(text1))

# lexical richness
# tokens / types ratio
from __future__ import division
len(text1)/len(set(text1))

# collocations
text3.collocations()

# bigrams
a = "He who is not courageous enough to take risks will accomplish nothing in life."
tokens = a.split()
bigrams(tokens)
```
## IPython way of life

```
# magic commands
%save moby-session 10-20 23
%save -a[append]
%cd
%dhist
%edit
%history 20
%pylab
%run filename.py
%timeit
%who

# more shell friends
ctrl-z
fg
```

\*<sup>Several examples and excersises are borrowed from S. Bird, E. Klein, and
E. Loper, Natural Language Processing with Python. Cambridge Mass.: O’Reilly
Media, 2009.
