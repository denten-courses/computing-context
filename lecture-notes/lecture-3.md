# Lecture 2: Style

## Package Management using Package Management

```
# install pip
sudo easy_install pip` (Mac)
sudo apt-get install pip` (Ubuntu/Debian)

# what is sudo?
```

## Libraries

```
# install nltk
$ sudo pip install -U numpy
$ sudo pip install nltk
$ sudo pip install matplotlib

# what is a library?
```

## Getting started with NLTK**

```
$ ipython

# from here on everythin is in iPython
# import the library and dowload a corpus
import nltk
nltk.download()

# import book corpus
`from nltk.book import *

# EDA (explore)
texts()
sents()
words()
text1
text2

# concordance and other methods
text1.condordance("awesome")
text1.similar("monstrous")

# other words?

# common contexts
text2.common_contexts(["whale", "captain"])

# plotting
text4.dispersion_plot(["whale", "captain", "ship", "pulpit"])

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
