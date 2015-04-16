# coding: utf-8
nltk.corpus.gutenberg.fileids()
emma = nltk.corpus.gutenberg.words('austen-emma.txt')
nltk.download()
from nltk.book import *
tokens = text1.tokens
len(text1)
words = text1.vocab()
len(words)
types = words.keys()
types?
%who

for suffix in suffixes:
    for type in types:
        if type.endswith(suffix):
            lemmas.append(type[:-len(suffix)])

f = open('lemmas.txt', 'w')
f.writelines("%s\n" % lemma for lemma in lemmas)
f.close()
snowball = nltk.SnowballStemmer("english")
snowstems = [snowball.stem(t) for t in tokens]
wnl = nltk.WordNetLemmatizer()
lemmas = [wnl.lemmatize(t) for t in tokens]
