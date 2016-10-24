testing - happy path
testNewWithName_createsCust
	"test that new Customer get created with first and last name"

	| cust first last |
	first := 'Julie'.
	last := 'Larson'.
	cust := Customer newWithName: (CustomerName newWithFirst: first Last: last).
	self
		assert: [ cust name first = first & (cust name last = last) ]
		description: 'first or last name does not match creation'