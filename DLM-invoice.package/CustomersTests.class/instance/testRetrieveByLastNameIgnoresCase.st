testing
testRetrieveByLastNameIgnoresCase
	"method should ignore case when performing search"

	| customers |
	
	customers := Customers new.
	customers addWithFirst: 'Joe' Last: 'Smith'.
	self assert: [ (customers retrieveByLastName: 'SMITH') size = 1 ] 
		description: 'case should be ignored on search'
	