testing - happy path
testValidationError_answersEmptyStringWhenIsValidIsTrue
	"test that validation error cotains an empty string for a valid customer"

	| cust |
	cust := Customer newWithName: (CustomerName newWithFirst: 'Amy' Last: 'Bender').
	self
		assert: [ cust validationError isEmpty ]
		description: 'validationError should contain empty string'