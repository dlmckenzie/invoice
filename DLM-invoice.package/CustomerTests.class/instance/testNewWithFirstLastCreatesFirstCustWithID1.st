testing
testNewWithFirstLastCreatesFirstCustWithID1
	"test that first new Customer get created with id of 1"

	| cust |
	Customer initialize.
	cust := Customer newWithFirst: 'Amber' Last: 'Brown'.
	cust := Customer newWithFirst: 'John' Last: 'Jones'.
	self assert: [ cust id = 2 ] description: 'customer id not being incremented properly'