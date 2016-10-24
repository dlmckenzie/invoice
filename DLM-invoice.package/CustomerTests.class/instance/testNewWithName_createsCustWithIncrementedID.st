testing - happy path
testNewWithName_createsCustWithIncrementedID
	"test that new customers have incremented ID"

	| cust |
	Customer initialize.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Amber' Last: 'Brown').
	self assert: [ cust id = 1 ] description: 'first customer should have id = 1'