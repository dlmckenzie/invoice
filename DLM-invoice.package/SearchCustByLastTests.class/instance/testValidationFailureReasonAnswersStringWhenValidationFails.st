testing
testValidationFailureReasonAnswersStringWhenValidationFails
	"comment me"

	| cmd |
	cmd := SearchCustByLast newWithLast: ''.
	cmd validate.
	self
		assert: [ cmd validationFailureReason isString  ]
		description: 'validationFailureReason should have answered a string'