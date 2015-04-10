#Read First:

www.nltk.org/book will be a major resource for the rest of the course. If you get stuck on something that isn't covered in the notes, look here first!

#List Comprehensions

**Simple Examples**

```
    wordlist = ['Ghosts','live','in','the','TREES!']
    wordlist2 = ['Does','that','lobster','live','in','the','tank?']
    [ w for w in wordlist ] #returns identical list
    [ w for w in wordlist if w not in wordlist2 ] #returns Ghosts live and TREES!
    [ w for w in wordlist if w not in wordlist2 and w.isalpha() ] #returns live
```

**Syntax**

- First element ("w") establishes output based on variable w, and can be altered (i.e. w.lower())
- Next element ("for w in wordlist") specifies that w is an element in the list "wordlists"
- Following elements ("if w not in wordlist 2", for example) are conditions that determine which elements end up in the list. Multiple conditions can be used with and/or

#PlaintextCorpusReader 

##Without specifying tokenizer:

```
	from nltk.corpus import PlaintextCorpusReader as pcr #import corpus reader
	corpus_root='/Desktop/cic/student-papers/' #Specify location of corpus files; note that this is relative to current location
	#take all files ending in '.txt' in location specified by corpus_root and store them in a corpus called "corp"; second argument uses regular expressions, and you can google "Regular Expressions Python" for the syntax. Basically, . is a wildcard, * means any number from 0-infinity, and \ escapes characters
	corp = pcr(corpus_root,'.*\.txt') 
```

##Specifying tokenizer:

Maybe you don't like the way it's tokenizing? You can specify that by importing one of several tokenizers in NLTK. This example uses the RegexpTokenizer.

```
from nltk.tokenize import RegexpTokenizer
tokes = RegexpTokenizer('[A-z]\w+')
wordlists = PlaintextCorpusReader(corpus_root,'.*\.txt',word_tokenizer=tokes)
```

#NLTK Plaintext Corpus functions:

```
	corp.words() #returns all words in corpus "corp"
	corp.words('filename.txt') #returns all words in corpus text with name 'filename.txt'
	corp.words(list_of_names) #returns all words in corpus texts with names contained in list variable list_of_names
	corp.sents()
```

#Stop words

```
	from nltk.corpus import stopwords as sw
	swords = sw.words('english')
```

#FreqDist

FreqDist generates a dictionary of counts for elements in a list. 

```
	from nltk.book import FreqDist as fd
	fdist = fd(corp.words('paper1.txt'))
	fdist.plot(n) #Plot n most frequent items in list
	fdist.most_common(n) #Return n most frequent items in list
```
