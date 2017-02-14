testing - edge cases
testValidatePrice_setsPriceValidationErrorToEmptyStringForNilPrice
	"test that validatePrice sets priceValidationError to emtpy string for a nil (missing) price"

	self
		assert: [ (UpdateProdWithPrice newWithKey: 'A' Price: nil) priceValidationError isEmpty ]
		description: 'priceValidationError should be empty string for nil price'