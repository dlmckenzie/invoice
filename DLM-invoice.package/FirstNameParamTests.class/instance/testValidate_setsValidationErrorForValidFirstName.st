testing - happy path
testValidate_setsValidationErrorForValidFirstName
	"tests that for a valid first name,
	the isValid instance variable gets set to true"

	| param |
	param := FirstNameParam newWithFirst: 'Joe'.
	param validate.
	self
		assert: [ param validationError = 'Validation Passed' ]
		description: 'param should be valid but is marked invalid'