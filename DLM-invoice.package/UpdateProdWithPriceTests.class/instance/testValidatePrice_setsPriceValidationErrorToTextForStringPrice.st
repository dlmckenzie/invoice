testing - edge cases
testValidatePrice_setsPriceValidationErrorToTextForStringPrice
	"test that validatePrice sets priceValidationError to a string for a string price"

	self
		assert: [ (UpdateProdWithPrice newWithKey: 'A' Price: '12.99') priceValidationError isNotEmpty  ]
		description: 'priceValidationError should be non-empty string for a price represented as a string'