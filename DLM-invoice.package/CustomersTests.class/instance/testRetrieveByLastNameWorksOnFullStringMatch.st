testing
testRetrieveByLastNameWorksOnFullStringMatch
	"test that customer is included when name fully matches search string"

	| customers id last|
	
	last := 'Richardson'.
	customers := Customers new.
	id := customers addWithFirst: 'Joe' Last: last.
	self assert: [ ((customers retrieveByLastName: last) at: id) last = last] 
		description: 'Failed to answer with cust matching last name'
	 