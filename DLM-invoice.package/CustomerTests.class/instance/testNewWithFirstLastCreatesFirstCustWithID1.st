testing - happy path
testNewWithFirstLastCreatesFirstCustWithID1
	"test that first new Customer get created with id of 1"

	| cust |
	Customer initialize.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Amber' Last: 'Brown').
	cust := Customer newWithName: (CustomerName newWithFirst: 'John' Last: 'Jones').
	self assert: [ cust id = 2 ] description: 'customer id not being incremented properly'