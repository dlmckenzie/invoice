testing - happy path
testIsValid_answersTrueForValidCustomer
	"test that isValid answers true for valid customer"
	
	| cust name |
	name := CustomerName newWithFirst: 'Amy' Last: 'Bee'. 
	cust := Customer newWithName: name.
	self assert: [ cust isValid ] description: 'isValid should have answered true for valid customer'
