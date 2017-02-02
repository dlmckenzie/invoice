testing - happy path
testValidationFailureReason_answersNilWhenValidationPasses
	"comment me"

	| cmd |
	cmd := SearchCustByLast newWithLast: 'Smith'.
	cmd validate.
	self
		assert: [ cmd validationError isNil ]
		description: 'validationFailureReason should have been nil'.
	