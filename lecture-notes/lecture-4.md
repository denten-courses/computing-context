# Lecture 4: Setting

## Anatomy of the Corpus

Isolated, Categorized, Tagged, Temporal


## Building the Pipeline

```
# tokens
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

types = words.keys()
types?

%who

# Let's build our own stemmer
stems = []
suffixes = ['ed','ly','s']

for suffix in suffixes:
    for type in types:
        if type.endswith(suffix):
            stems.append(type[:-len(suffix)])

# more tokens

raw = "I wanted her to stay at home and rest this morning, but she would come \
with us; she longed so much to see you all! She ran runs running ruin ruining.\
What if we have an abbrv. in the sentence?"

# get sentences
from nltk import sent_tokenize

sents = sent_tokenize(raw)

# another way to tokenize
tokens = nltk.word_tokenize(raw)
raw.split()
raw.split?
len(tokens)
tokens.count("to")

# lets try it again

# normalize
normal = raw.lower()

# grab your regxp tokenizer
from nltk.tokenize import RegxpTokenizer

# customize the tokenizer with regex
tokenizer = RegexpTokenizer(r'\w+')

# tokenizer with your tokenizer
better_tokens = tokenizer.tokenize(raw)

# remove stopwords
from nltk.corpus import stopwords
stopwords = stopwords.words('english')
clean_tokens = [w for w in better_tokens if w not in stopwords]

# same as above, but longer!
clean_tokens = []
for w in tokens:
    if w not in stopwords:
        clean_tokens.apend(w)

# try this using raw instead of tokens
# what do you see?
# an iterable is an "object capable of returning its members one at at time"
# what are members of raw?
# what are members of tokens?

# fun with lists
reversed = tokens.reverse()
sorted = tokens.sort()
pop = tokens.pop()

# n-grams
nltk.bigrams(raw)
nltk.bigrams(clean_tokens)
nltk.trigrams(clean_tokens)

# more grams
from nltk.util import ngrams
n = 4
fourgrams = ngrrams(clean_tokens, n)

# get your types
types = FreqDist(clean_tokens).keys()
len(types)
len(clean_tokens)
clean_tokens?
types?

# stem
snowball = nltk.SnowballStemmer("english")
stems = [snowball.stem(t) for t in clean_tokens]
stems?

# write to disk
f = open('stems.txt', 'w') # after this step check in your folder for this file
f.writelines("%s\n" % stem for stem in stems)
f.close()

# lemma
# we want to reduce words "women" to "woman"
# and "run ran running" all to "run"
# these are lemmas
wnl = nltk.WordNetLemmatizer()
lemmas = [wnl.lemmatize(t) for t in tokens]
lemmas?

# hmmm this lemmatizer does not work well...
wnl.lemmatize("ate")
wnl.lemmatize("women")
wnl.lemmatize("abaci")
wnl.lemmatize("are")
wnl.lemmatize("is")

# I expected it to reduce "are" and "is" to "be"
wnl.lemmatize?

# hmm, lemmatize takes part of speech
# let's specify part of speech
wnl.lemmatize('is', pos='v')
wnl.lemmatize('are', pos='v')

# ack, I see--this works better with part of speech tagging
# let's try that
tagged = nltk.pos_tag(raw.split())

# why does this not work?
lemmas = [wnl.lemmatize(t[0], pos=t[1]) for t in tagged]

# let's extract "named entities"
# these could be names of persons, organizations, locations, expressions of
# times, and and quantities

from nltk.tag.stanford import NERTagger

# in the command line
# use wget or curl to download
# http://nlp.stanford.edu/software/stanford-ner-2014-06-16.zip
# unzip the file

# The path should point to the unzipped folder, for example ~/Downloads/stanford-ner-2014-06-16/... Replace "path/to" below with the path to this folder
st = NERTagger("path/to/stanford-ner-2014-06-16/classifiers/english.all.3class.distsim.crf.ser.gz",
"/path/to/stanford-ner-2014-06-16/stanford-ner.jar")

# example of use on string
raw = "Emma Watson is attending Columbia University in New York"
st.tag(raw.split())
