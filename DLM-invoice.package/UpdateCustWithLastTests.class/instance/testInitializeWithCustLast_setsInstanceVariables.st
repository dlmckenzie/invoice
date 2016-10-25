testing - happy path
testInitializeWithCustLast_setsInstanceVariables
	"Answer a new UpdateCustWithLast command instance using the provided info"

	| last cust id cmd |
	last := 'McKenzie'.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Dave' Last: 'Mac').
	id := cust id.
	cmd := UpdateCustWithLast new.
	cmd initializeWithCust: id Last: last.
	self assert: [ cmd id = id ] description: 'id not being set'.
	self assert: [ cmd last = last ] description: 'last not being set'