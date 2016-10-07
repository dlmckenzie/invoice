testing - happy path
testValidate_setsValidationErrorForInvalidLastName
	"tests that for a valid first name,
	the isValid instance variable gets set to true"

	| param |
	param := LastNameParam newWithLast: ''.
	param validate.
	self
		assert: [ param validationError = 'Invalid last name' ]
		description: 'param validationError incorrect'