testing - happy path
testValidate_setsValidationErrorForInvalidFirstName
	"tests that for a valid first name,
	the isValid instance variable gets set to true"

	| param |
	param := FirstNameParam newWithFirst: 'Joe,'.
	param validate.
	self
		assert: [ param validationError = 'Invalid first name' ]
		description: 'param validationError incorrect'