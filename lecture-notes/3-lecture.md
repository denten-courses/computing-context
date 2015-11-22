## Week 3: Quality

### Screencasts

https://drive.google.com/open?id=0B4OAOue0b3VMQzlTbHB3ZEw0T3M

### Readings

Orwell, George. “[Politics and the English
Language](https://drive.google.com/file/d/0B4OAOue0b3VMNjJFYmFreDFTc1k/view?usp=sharing).”
In The Collected Essays, Journalism, and Letters of George Orwell, 127–40. New
York: Harcourt, Brace & World, Inc., 1968.

Agatha van Velzen, Marjolein H., Luca Nanetti, and Peter P. de Deyn. “[Data
Modelling in Corpus Linguistics: How Low May We
Go?](http://www.sciencedirect.com/science/article/pii/S0010945213002554)”
Cortex, Language, Computers and Cognitive Neuroscience, 55 (June 2014):
192–201.<sub>†</sub>

<sup>†</sup> <sub>Requires university login.</sub>

### Lecture Notes

```
# notions of quality
# reading orwell
# cognitive decline
# let's see how it work in practice
```

```
# remember to start in new folder
# grab orwell's essay
curl -w orwell.html https://www.mtholyoke.edu/acad/intrel/orwell46.htm

# peek inside
cat orwell.html

# oh oh, lots of garbage
# what is html?
# three ways to strip it
# 1. Write your own parser in Python
# 2. Use an existing library like "beautiful soup" (probably best)
# 3. Use Aaron Swartz's html2text (https://github.com/aaronsw/html2text)
# 4. Use something a plain text browser like "lynx" and dump output to file
# like this (quick and dirty):
lynx -dump https://www.mtholyoke.edu/acad/intrel/orwell46.htm orwell.txt

# not bad
cat orwell.txt
```

```
# review code from last time for your program you probably want to create a
# function which either prints your calculated parameters to the screen OR
# saves them in a csv or .json file ask your TA if you do not know what those are

from string import punctuation
from collections import Counter

# open file and read contents into one long strings
# no need for lines even like last time, eh?

with open('orwell.txt', 'r') as f:
    text = f.read()

# make our container
tokens = []

# populate the lines list
# important: what is the difference between line and sentence?
# semantic units vs. formatting units
lines = text.splitlines()

# populate the tokens list
for word in text.split():
    tokens.append(word.strip(punctuation).lower())

# get our types
types = Counter(tokens)

# poke around the Counter type
types.most_common(50)

# read carefully in ipython
# review the dictionary type
types?

# get the type of tokens ratio
type_token_ratio = len(types)/len(tokens)

# oh-oh, why is it zero?
from __future__ import division
type_token_ratio = len(types)/len(tokens)

# can you see the problem?
# what happens when we compare a long text with a short text?
# need to normalize for length...
# see 2.2.1 in the van Velzen et.al paper (and make sure to follow the links)
```

### Home Experiments

- [Normalized TTR](https://github.com/denten-courses/computing-context/blob/master/experiments/3-experiment/normal.md)
- [Essay
Grader](https://github.com/denten-courses/computing-context/blob/master/experiments/3-experiment/grader.md)
