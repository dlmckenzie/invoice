testing
testValidateSetsValidationFailureReasonToNilWhenAllValidationsPass
	"ValidationFailureReason should be set to nil when all validations pass"
	| cmd |
	cmd := SearchCustByLast newWithLast: 'Smith'.
	cmd validate.
	self
		assert: [ cmd validationFailureReason isNil ]
		description: 'validationFailureReaspo should be set to nil when all validations pass'