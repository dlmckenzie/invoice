testing - interface
testPriceValidationError_interface
	"method Product priceValidationError exists"

	self
		assert: [ (Product newWithKey: 'A') respondsTo: #priceValidationError ]
		description: 'product method priceValidationError does not exist'.
	self
		assert: [ (Product newWithKey: 'A') descriptionValidationError isString ]
		description: 'Product pricdValidationError did not answer string'