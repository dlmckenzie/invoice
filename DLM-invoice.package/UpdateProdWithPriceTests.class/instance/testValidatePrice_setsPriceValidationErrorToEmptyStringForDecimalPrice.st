testing - happy path
testValidatePrice_setsPriceValidationErrorToEmptyStringForDecimalPrice
	"test that validatePrice sets priceValidationError to empyy string for a price containing a decimal"

	self
		assert: [ (UpdateProdWithPrice newWithKey: 'A' Price: 7.99) priceValidationError isEmpty ]
		description: 'priceValidationError should be empty for a price containing a decimal'