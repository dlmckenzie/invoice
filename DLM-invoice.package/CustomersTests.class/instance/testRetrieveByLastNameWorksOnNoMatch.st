testing
testRetrieveByLastNameWorksOnNoMatch
	"Customers whose last name does not match search string are not included"

	| customers id |
	
	customers := Customers new.
	id := customers addWithFirst: 'Joe' Last: 'Richardson'.
	self assert: [ (customers retrieveByLastName: 'Smith') size = 0 ] 
		description: 'Cust returned even though last name doesn''t match'
	