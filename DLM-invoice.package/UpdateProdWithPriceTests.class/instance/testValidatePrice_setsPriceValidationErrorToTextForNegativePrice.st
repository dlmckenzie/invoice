testing - edge cases
testValidatePrice_setsPriceValidationErrorToTextForNegativePrice
	"test that validatePrice sets priceValidationError to some text for a negative price"

	self
		assert: [ (UpdateProdWithPrice newWithKey: 'A' Price: -10) priceValidationError isNotEmpty  ]
		description: 'priceValiadationError should be set to a non-empty string for a negative price'