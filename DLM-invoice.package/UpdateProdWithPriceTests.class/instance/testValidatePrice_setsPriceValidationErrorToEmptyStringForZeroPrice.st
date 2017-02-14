testing - edge cases
testValidatePrice_setsPriceValidationErrorToEmptyStringForZeroPrice
	"test that validatePrice sets priceValidationError to emtpy string for a price set to 0"

	self
		assert: [ (UpdateProdWithPrice newWithKey: 'A' Price: 0) priceValidationError isEmpty  ]
		description: 'priceValidationError should be empty for a price set to 0'