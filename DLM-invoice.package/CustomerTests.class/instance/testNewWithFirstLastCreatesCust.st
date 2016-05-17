testing
testNewWithFirstLastCreatesCust
	"test that new Customer get created with first and last name"

	| cust first last |
	
	first := 'Julie'.
	last := 'Larson'.
	cust := Customer newWithFirst: first Last: last.
	self assert: [ (cust first = first) & cust last = last ]
		description: 'first or last name does not match creation'