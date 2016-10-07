testing - edge cases
testValidate_setsIsValidToFalseForInvalidLastName
	"tests that for an invalid last name,
	the isValid instance variable gets set to true"

	| param |
	param := LastNameParam newWithLast: ''.
	param validate.
	self deny: [ param isValid ] description: 'param should be valid but is marked invalid'