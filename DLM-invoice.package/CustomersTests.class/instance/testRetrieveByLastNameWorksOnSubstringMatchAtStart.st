testing
testRetrieveByLastNameWorksOnSubstringMatchAtStart
	"Customers whose last name does not match search string are not included"

	| customers id |
	customers := Customers new.
	id := customers addWithFirst: 'Joe' Last: 'Richardson'.
	self assert: [ ((customers retrieveByLastName: 'Richard') at: id) last = 'Richardson'] 
		description: 'Failed to answer with search string matching beginning of customer last name'
	 
	
