testing - happy path
testValidate_setsValidationFailureReasonToNilWhenAllValidationsPass
	"ValidationFailureReason should be set to nil when all validations pass"
	| cmd |
	cmd := SearchCustByLast newWithLast: 'Smith'.
	cmd validate.
	self
		assert: [ cmd validationError isNil ]
		description: 'validationFailureReaspo should be set to nil when all validations pass'