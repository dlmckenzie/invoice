testing - interface
testValidationError_interface
	"test method interface"

	self
		assert: [ (Product newWithKey: 'A') respondsTo: #validationError ]
		description: 'Product validationError method does not exist'.
	self
		assert: [ (Product newWithKey: 'A') validationError isString ]
		description: 'Product validationError should have answered with string'