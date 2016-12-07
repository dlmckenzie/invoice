testing - interface
testKeyValidationError_interface
	"method Product key exists"

	self
		assert: [ (Product newWithKey: 'A') respondsTo: #keyValidationError ]
		description: 'product method keyValidationError does not exist'.
	self
		assert: [ (Product newWithKey: 'A') keyValidationError isString ]
		description: 'Product keyValidationError did not answer string'