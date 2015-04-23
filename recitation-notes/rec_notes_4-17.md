
#Dict outputs

	- to review, you can dump the items in a dictionary into a list of items or a list of tuples
	- .values(), .keys(), .items() return the various parts of the data structure as either a list or a list of tuples.
	- e.g. dict_name.items() returns a list of tuples

#CSV Writer

	- outputting to CSV is made easy by the CSV Writer tool in Python
	- import it like you import any other module:
	
`        import csv
	
	- open the file; for good measure, write the close function too, and put everything in between

`        csvf = open('ww_class.csv','w')
		...
`        csvf.close()

	- create a *writer object*, which will be an object you can use to write things to a csv using specific commands like "writerow"
'''
		newlist = [[1,2],[3,4],[5,6]]
		cwrite = csv.writer(csvf)
		for n in new_list:
		    csvf.writerow(n)
'''

	- the above will result in three two-element rows, with elements delimited by commas and rows delimited by newlines



