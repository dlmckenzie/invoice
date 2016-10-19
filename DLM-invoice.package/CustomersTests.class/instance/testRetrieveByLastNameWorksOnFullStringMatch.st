testing
testRetrieveByLastNameWorksOnFullStringMatch
	"test that customer is included when name fully matches search string"

	| customers id last cust |
	last := 'Richardson'.
	cust := (Customer newWithName: (CustomerName newWithFirst: 'Lisa' Last: last)).
	customers := Customers new.
	customers addCust: cust.
	id := cust id.
	self
		assert: [ ((customers retrieveByLastName: last) at: id) last = last ]
		description: 'Failed to answer with cust matching last name'