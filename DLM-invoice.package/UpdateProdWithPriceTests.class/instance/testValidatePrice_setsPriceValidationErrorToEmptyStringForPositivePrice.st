testing - happy path
testValidatePrice_setsPriceValidationErrorToEmptyStringForPositivePrice
	"test that validatePrice sets priceValidationError to empty string for a positive price"

	self
		assert: [ (UpdateProdWithPrice newWithKey: 'A' Price: 6) priceValidationError isEmpty  ]
		description: 'priceValidationError should be empty for a postive price'