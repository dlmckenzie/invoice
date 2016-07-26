testing
testRetrieveByLastNameWorksOnSubstringMatchAtStart
	"Customers whose last name does not match search string are not included"

	| customers  cust |
	customers := Customers new.
	cust := Customer newWithFirst: 'Joe' Last: 'Richardson'.
	customers addCust: cust.
	self
		assert: [ ((customers retrieveByLastName: 'Richard') at: cust id) last = 'Richardson' ]
		description: 'Failed to answer with search string matching beginning of customer last name'