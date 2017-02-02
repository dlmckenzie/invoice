testing - edge cases
testValidationFailureReason_answersStringWhenValidationFails
	"comment me"

	| cmd |
	cmd := SearchCustByLast newWithLast: ''.
	cmd validate.
	self
		assert: [ cmd validationError isString  ]
		description: 'validationFailureReason should have answered a string'