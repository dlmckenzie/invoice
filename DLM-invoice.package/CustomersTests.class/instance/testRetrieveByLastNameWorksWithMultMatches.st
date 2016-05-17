testing
testRetrieveByLastNameWorksWithMultMatches
	"test that method accomodates mult matches against sarch string"
	
	| customers |
	
	customers := Customers new.
	customers addWithFirst: 'Joe' Last: 'Richardson'.
	customers addWithFirst: 'Sarah' Last: 'Richards'.
	customers addWithFirst: 'Lisa' Last: 'Hamilton'.
	self assert: [ (customers retrieveByLastName: 'Richard') size = 2 ] 
		description: 'search did not return correct number of customers'

