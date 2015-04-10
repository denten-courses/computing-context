---
title: "Weasel Words II"
author: Dennis Tenen
due: Monday 4/20 by midnight

---

## Challenge
Just looking at the list of most commonly used words catches overused verbal
ticks along with the *topic* of the essay. How do we separate the two? The
challenge of this assignment is to derive a list of weasel words *common* to
our class and then to use those results to improve on the code we wrote for
WWI. How might you go about doing that? Start by breaking the problem down into
a series of steps in pseudo-code.

## Experiment

1. Use NLTK to load in the corpus and write a program that will output a list
of class-wide weasel words into a .csv file. Remember that we are not just trying to find common words, but a special sub-class of pernicious common words. Think of other approaches you can take here (for example, creating a list of weasel stop-words by hand and then looking for them in your corpus).

2. Remake [*Weasel Words I*](https://github.com/denten-courses/computing-context/blob/master/experiments/1-weasel/1-weasel-words.md) using Python NLTK. Put all of your essay words into the bag. Subtract
words found only in your essay (and not in the class corpus). Subtract common
English words to derive true weasels.

Submit your annotated code (.py) along with your results (.csv). Write a
paragraph (as a comment on top of your code) describing your model. What assumptions
or biases does it imply? Once you get results, write a few sentences describing any insights you gained
from your results. What are the weasel words common to the class? How do the
class results differ from your personal ones? Were you able to improve on our
model in WWI?
