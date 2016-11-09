testing - edge cases
testValidationError_answersStringWhenIsValidIsFalse
	"test that validation error cotains a nonempty string for an invalid customer"

	| cust |
	cust := Customer newWithName: (CustomerName newWithFirst: 'Amy' Last: '').
	self
		deny: [ cust validationError isEmpty ]
		description: 'validationError should not contain empty string'