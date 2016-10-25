testing - happy path
testNewWithCustLast_setsInstanceVariables
	"Answer a new UpdateCustWithLast command instance using the provided info"

	| cust id cmd last |
	last := 'David'.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Dave' Last: 'Mac').
	id := cust id.
	cmd := UpdateCustWithLast newWithCust: id Last: last.
	self assert: [ cmd id = id ] description: 'custid not being set'.
	self assert: [ cmd last = last ] description: 'last not being set'