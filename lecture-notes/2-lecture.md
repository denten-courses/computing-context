## Week 2: Word (Types and Tokens)

### Screencasts

https://drive.google.com/open?id=0B4OAOue0b3VMTTVRd2lQUWJrNm8

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

[Hunting the Whale I (shell)](https://github.com/xpmethod/dhnotes/blob/master/command-line/109-text.md#hunting-the-whale)

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
