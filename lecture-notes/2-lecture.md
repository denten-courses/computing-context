## Week 2: Word (Types and Tokens)

### Screencasts

https://github.com/denten-courses/computing-context/tree/master/screencasts/2-screencast

### Readings

- "[Facing the Language Challenge](http://www.nltk.org/book/ch12.html)" from
*[Natural Language Processing with Python](http://www.nltk.org/book/)* by
Steven Bird, Ewan Klein and Edward Loper.

- Browse [Filesystem Hierarchy Standard](http://www.pathname.com/fhs/)

- [Take the Linux Filesystem
Tour](http://web.archive.org/web/20140224004333/http://tuxradar.com/content/take-linux-filesystem-tour/#null)

### Experiments

[Hunting the
Whale](https://github.com/denten-courses/computing-context/tree/master/experiments/second.md).

### Lecture Notes


#### Part 2.1: Hunting the Whale I (shell)

```
# make a project directory where we experiment
mkdir hunting-whale

# cd into the directory
# don't forget to type, programmers are "good lazy"
cd hunting-whale

# let's grab moby dick (or use another novel"
# make sure it is in plain text!
# the angle bracket is a redirect into a file
curl http://www.textfiles.com/etext/FICTION/mobydick.txt > moby.txt

# let's peek inside
cat moby.txt

# find the whale
grep "whale" moby.txt

# substitute whale for chicken globally
cat moby.txt | sed 's/whale/chicken/g' > chicken.txt

# see what happened to the whales
grep "chicken" chicken.txt

# remove punctuation.
cat moby.txt | tr -d "[:punct:]" > moby-nopunct.txt

# check if it worked
tail moby-nopunct.txt

# translate all upper case into lower
cat moby-nopunct.txt | tr '[:upper:]' '[:lower:]' > moby-clean.txt
tail moby-clean.txt

# sort by word frequency
cat moby-clean.txt | sed 's/[[:space:]]/\'$'\n/g' | sort | uniq -c | sort -k1 > word-count.txt
head word-count.txt
```

#### Part 2.2: Things to do with Files (iPython)

```
# fire up ipython
ipython

# open file
f = open('moby.txt', 'r)

# check type, wha
type(f)

# what can you do>
f.[tab in ipython here instead of typing this to see methods attached to type file]

# get file name
f.name()

# lets move through the file
f.readline()

# check file position
f.tell()

# why this number?
# reset file position
f.seek(0)

# display the whole file
while f:
    print(f.readline())

# try f.readline() now
Why is this happening?

# how long is the file? what does the length represent?
f.tell()
import os
os.stat('moby.txt')
f.seek?
f.seek(0, 2)
moby_length = f.seek(0,2)

# lets grab a (pseudo)random line
# grab the randomizer
from random import randint

# generate a random in range
randint(0,100)

# generate a random in file range
randint(0,moby_length)

# grab random line
f.readline(randint(0,moby_length))

# this is tiring, lets close the file
f.close()

# what happens when you f.readline() now?

# ok that was too much work
# but we learned to read file objects
# and the readline method which gives us line
# of type string

# let's do it for real now
# and just grab all the lines in one go
# AND close the file while we are at it
# attention design pattern!
# don't forget to tab here too

with open('moby.txt', 'r') as f:
        lines = f.readlines()

type(lines)
mobyl = len(lines)
lines[l]

# oh-oh!

lines[mobyl-1]

# phew
# no need to close
```

#### Part 2.2: Hunting the Whale II (iPython)

```
# open file and read contents into a list of lines
# mimics the shell behavior in the previous example
with open('moby.txt', 'r') as f:
    lines = f.read().splitlines()
```

```
# replace whale for chicken in every line and print results
for line in lines:
    if 'whale' in line:
        print(line.replace('whale', 'chicken'))
```

```
from string import punctuation
from collections import Counter

tokens = []

for line in lines:
    for word in line.split():
        tokens.append(word.strip(punctuation).lower())

# display 100 most common types
types = Counter(tokens)
types.most_common(100)
```
