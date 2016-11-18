testing - happy path
testNewWithName_createsCustWithIncrementedID
	"test that new customers have incremented ID"

	| cust |
	Customer initialize.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Amber' Last: 'Brown').
	self assert: [ cust id = 1 ] description: 'first customer should have id = 1'.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Lisa' Last: 'Smith').
	self assert: [ cust id = 2 ] description: 'first customer should have id = 2'