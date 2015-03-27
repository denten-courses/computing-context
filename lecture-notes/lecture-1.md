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
pwd
wget link/moby.pdf (use curl on macs)
pdftotext moby.txt
man man (q to exit)
ls
```

### Popping the hood
```
cat moby.txt
cat moby.pdf
xxd moby.txt
xxd moby.pdf
wc -w file.txt words
wc -l file.txt lines
wc -m file.txt chars
```

### Putting all your fruits into one basket

1. add your fruits  
`   echo "orange banana pear tomato banana pear orange apple apple strawberry
nectarine" >
fruit.txt`

2. add another one  
`    echo "banana" >> fruit.txt`

3. substitute space for newlines  
`    sed 's/\s/\n/g'` (Linux)  
`    sed 's/[[:space:]]/\'$'\n/g' fruits.txt` (Mac)  

4. remove bad fruit  
`    echo "nectarine" > bad-fruit.txt`  
`    echo "tomato" >> bad-fruit.txt`  
`    cat fruit.txt | grep -vf bad-fruit.txt`  
`    cat fruit.txt` (to see if it worked)  

5. sort and count  
`    sort fruits.txt > sorted-fruits.txt`  
`    uniq -c sorted-fruits.txt`  

### Rewriting *Moby Dick*  

1. find the whale  
`    grep "whale" moby.txt`

2. substitute whale for chicken  
`    cat moby.txt | sed 's/whale/chicken' > chicken.txt`

3. find the remaining whales  
`    grep "Whale" chicken.txt`

4. remove punctuation  
`    cat file.txt | tr -d "[:punct:]" > moby-nopunct.txt`

5. make all lower case  
`    cat moby-nopunct.txt | tr "[:upper:] [:lower:]" > moby-clean.txt`

6. sort by word frequency  
`    cat file.txt | sed 's/\s/\n/g' | sort | uniq -c | sort -hr > test.txt`
(Linux)  
`    cat file.txt | sed 's/[[:space:]]/\'$'\n/g' | sort | uniq -c | sort -k1 >
file_wc.txt` (Mac)
