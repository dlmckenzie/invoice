testing
testRetrieveByLastNameWorksWithMultMatches
	"test that method accomodates mult matches against sarch string"

	| customers |
	customers := Customers new.
	customers
		addCust: (Customer newWithFirst: 'Joe' Last: 'Richardson');
		addCust: (Customer newWithFirst: 'Sarah' Last: 'Richards');
		addCust: (Customer newWithFirst: 'Lisa' Last: 'Hamilton').
	self
		assert: [ (customers retrieveByLastName: 'Richard') size = 2 ]
		description: 'search did not return correct number of customers'