testing
testRetrieveByLastNameWorksWithMultMatches
	"test that method accomodates mult matches against sarch string"

	| customers |
	customers := Customers new.
	customers
		addCust: (Customer newWithName: (CustomerName newWithFirst: 'Joe' Last: 'Richardson'));
		addCust: (Customer newWithName: (CustomerName newWithFirst: 'Sarah' Last: 'Richards'));
		addCust: (Customer newWithName: (CustomerName newWithFirst: 'Lisa' Last: 'Hamilton')).
	self
		assert: [ (customers retrieveByLastName: 'Richard') size = 2 ]
		description: 'search did not return correct number of customers'