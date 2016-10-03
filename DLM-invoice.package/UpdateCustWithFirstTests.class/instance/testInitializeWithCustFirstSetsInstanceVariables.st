testing
testInitializeWithCustFirstSetsInstanceVariables
	"Answer a new UpdateCustWithFirst command instance using the provided info"

	| cust cmd first |
	first := 'David'.
	cust := Customer newWithFirst: 'Dave' Last: 'Mac'.
	cmd := UpdateCustWithFirst new.
	cmd initializeWithCust: cust First: first. 
	self assert: [ cmd cust = cust ] description: 'cust not being set'.
	self assert: [ cmd first = first ] description: 'first not being set'