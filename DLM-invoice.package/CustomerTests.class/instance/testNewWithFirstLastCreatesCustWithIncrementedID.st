testing
testNewWithFirstLastCreatesCustWithIncrementedID
	"test that new customers have incremented ID"

	| cust |
	Customer initialize.
	cust := Customer newWithFirst: 'Amber' Last: 'Brown'.
	self assert: [ cust id = 1 ] description: 'first customer should have id = 1'