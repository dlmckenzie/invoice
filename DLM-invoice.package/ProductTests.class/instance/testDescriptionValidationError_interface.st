testing - interface
testDescriptionValidationError_interface
	"method Product descriptionValidationError exists"

	self
		assert: [ (Product newWithKey: 'A') respondsTo: #descriptionValidationError ]
		description: 'product method descriptionValidationError does not exist'.
	self assert: [ (Product newWithKey: 'A') descriptionValidationError isString ] description: 'Product descriptionValidationError did not answer string'