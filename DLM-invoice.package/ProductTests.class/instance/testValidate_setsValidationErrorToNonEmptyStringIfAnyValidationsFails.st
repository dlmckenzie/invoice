testing - happy path
testValidate_setsValidationErrorToNonEmptyStringIfAnyValidationsFails
	"test description"
	
	| prod |
	prod := Product newWithKey: ''.
	self
		assert: [ prod validationError isNotEmpty ]
		description: 'Product validationError should contain error string'