testing - happy path
testValidate_setsValidationErrorToEmptyStringIfAllValidationsPass
	"test description"

	| prod |
	prod := Product newWithKey: 'A'.
	self
		assert: [ prod validationError isEmpty ]
		description: 'Product validationError should contain empty string'