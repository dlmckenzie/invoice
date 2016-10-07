testing - happy path
testValidate_setsValidationErrorForValidLastName
	"tests that for a valid last name,
	the isValid instance variable gets set to true"

	| param |
	param := LastNameParam newWithLast: 'Baker'.
	param validate.
	self
		assert: [ param validationError = 'Validation Passed' ]
		description: 'param should be valid but is marked invalid'