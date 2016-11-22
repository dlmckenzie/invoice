testing - interface
testPriceValidationError_interface
	"test method exists"

	self
		assert: [ (Product newWithKey: 'A') respondsTo: #priceValidationError ]
		description: 'product method priceValidationError does not exist'.
	self
		assert: [ (Product newWithKey: 'A') priceValidationError isString ]
		description: 'Product priceValidationError did not answer nil or a number'