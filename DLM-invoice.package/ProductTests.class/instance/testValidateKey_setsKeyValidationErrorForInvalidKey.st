testing - edge cases
testValidateKey_setsKeyValidationErrorForInvalidKey
	"test description"

	| prod |
	prod := Product newWithKey: ''.
	self
		assert: [ prod keyValidationError isNotEmpty ]
		description: 'Product keyValidationError should contain error string'