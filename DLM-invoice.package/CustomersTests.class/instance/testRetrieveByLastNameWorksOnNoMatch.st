testing
testRetrieveByLastNameWorksOnNoMatch
	"Customers whose last name does not match search string are not included"

	| customers cust |
	customers := Customers new.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Joe' Last: 'Richardson').
	customers addCust: cust.
	self
		assert: [ (customers retrieveByLastName: 'Smith') isEmpty  ]
		description: 'Cust returned even though last name doesn''t match'