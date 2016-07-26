testing
testRetrieveByLastNameWorksOnNoMatch
	"Customers whose last name does not match search string are not included"

	| customers cust |
	customers := Customers new.
	cust := Customer newWithFirst: 'Joe' Last: 'Richardson'.
	customers addCust: cust.
	self
		assert: [ (customers retrieveByLastName: 'Smith') size = 0 ]
		description: 'Cust returned even though last name doesn''t match'