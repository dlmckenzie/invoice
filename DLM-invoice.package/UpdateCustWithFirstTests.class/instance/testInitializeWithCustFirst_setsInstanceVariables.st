testing - happy path
testInitializeWithCustFirst_setsInstanceVariables
	"Answer a new UpdateCustWithFirst command instance using the provided info"

	| first cust id cmd |
	first := 'David'.
	cust := Customer  newWithName: (CustomerName newWithFirst: 'Dave' Last: 'Mac').
	id := cust id.
	cmd := UpdateCustWithFirst new.
	cmd initializeWithCust: id First: first.
	self assert: [ cmd id = id ] description: 'id not being set'.
	self assert: [ cmd first = first ] description: 'first not being set'