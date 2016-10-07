testing
testNewWithCustFirst_setsInstanceVariables
	"Answer a new UpdateCustWithFirst command instance using the provided info"

	| cust id cmd first |
	first := 'David'.
	cust := Customer newWithFirst: 'Dave' Last: 'Mac'.
	id := cust id.
	cmd := UpdateCustWithFirst newWithCust: id First: first.
	self assert: [ cmd id = id ] description: 'custid not being set'.
	self assert: [ cmd first = first ] description: 'first not being set'