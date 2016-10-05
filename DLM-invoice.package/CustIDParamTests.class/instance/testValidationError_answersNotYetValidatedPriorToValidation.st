testing - edge cases
testValidationError_answersNotYetValidatedPriorToValidation
	"test method answers 'Not yet validated' prior to validate method being run"

	| param |
	param := CustIDParam newWithCustID: 1.
	self
		should: [ param validationError  ]
		raise: Error
		description: 'a nil isValid should have raised error'