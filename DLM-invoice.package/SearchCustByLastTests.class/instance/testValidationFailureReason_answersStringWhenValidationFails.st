testing - edge cases
testValidationFailureReason_answersStringWhenValidationFails
	"comment me"

	| cmd |
	cmd := SearchCustByLast newWithLast: ''.
	cmd validate.
	self
		assert: [ cmd validationFailureReason isString  ]
		description: 'validationFailureReason should have answered a string'