```
import nltk

nltk.download()

from nltk.book import *

# Token (word)
tokens = text1.tokens
len(text1)

# Type (vocab)
words = text1.vocab()
len(words)
words?

# Munging

f = open('lemmas.txt', 'w')
f.writelines("%s\n" % stem for stem in stems)
f.close()

# Built-in Stemmers
snowball = nltk.SnowballStemmer("english")
snowstems = [snowball.stem(t) for t in tokens]

# Lemma
wnl = nltk.WordNetLemmatizer()
lemmas = [wnl.lemmatize(t) for t in tokens]
```

## Extracting relations

