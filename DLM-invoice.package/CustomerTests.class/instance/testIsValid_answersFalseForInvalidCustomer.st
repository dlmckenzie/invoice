testing - happy path
testIsValid_answersFalseForInvalidCustomer
	"test that isValid answers false for invalid customer"

	| cust name |
	name := CustomerName newWithFirst: 'Amy' Last: ''.
	cust := Customer newWithName: name.
	self deny: [ cust isValid ] description: 'isValid should have answered true for valid customer'