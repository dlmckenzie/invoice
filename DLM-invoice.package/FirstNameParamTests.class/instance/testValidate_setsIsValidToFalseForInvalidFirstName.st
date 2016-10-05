testing - edge cases
testValidate_setsIsValidToFalseForInvalidFirstName
	"tests that for an invalid first name,
	the isValid instance variable gets set to true"

	| param |
	param := FirstNameParam newWithFirst: 'Joe,'.
	param validate.
	self deny: [ param isValid ] description: 'param should be valid but is marked invalid'