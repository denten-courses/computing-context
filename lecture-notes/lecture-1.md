# Lecture 1: Text

## Class pacing

- course structure
- live syllabus
- structure of assignments
- where to get help

## What are the Digital Humanities?

critical thought + critical practice

- Computational culture studies (2 ways)
- Knowledge design
- Institutional transformation

## Where and what is literature?

## Reading for method (bankspeak)

- what is the object of study?
- how is it done?
- what is the time scale? what is it usually?

## Literature down to the pixel

- letter > word > sentence > paragraph > chapter > page > document > corpus >
canon
- close reading vs. distant reading
- Hamlet vs. Hamlet
- fluid text, text transformation

## How to do things with words (command line)


### Finding your way
```
mkdir project-name
ls
wget link
cat file.txt
pdftotext file.txt
man man`
```

### Popping the hood
```
wc -w file.txt words
wc -l file.txt lines
wc -m file.txt chars
cat file.txt
cat file.pdf
```

### Putting all your eggs into one basket

1. add your fruits  
`echo "orange banana pear banana pear orange apple apple strawberry" >
fruit.txt`

2. add another one  
`echo "banana"`

3. substitute space for newlines 

for Linux:

`sed 's/\s/\n/g'`

for Mac: 

sed 's/[[:space:]]/\'$'\n/g' fruits.txt

4. sort and count  
`sort`  
`uniq -c`

### rewriting moby dick
1. find the whale  
`grep "whale" file.txt`

2. substitute whale for chicken  
`cat file.txt | sed 's/whale/chicken' > chicken.txt`

3. find the remaining whales  
`grep "whale" chicken.txt`

4. remove punctuation  
`tr -d "[:punct:]" < file.txt > file-nopunct.txt`

5. make all lower case  
`tr [:upper:] [:lower:] < file-nopunct.txt > file-lowercase.txt`

6. sort by word frequency  

For Linux:

`cat file.txt | sed 's/\s/\n/g' | sort | uniq -c | sort -hr > test.txt

For Mac:

'cat file.txt | sed 's/[[:space:]]/\'$'\n/g' | sort | uniq -c | sort -k1 > file_wc.txt '
