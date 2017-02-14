testing - edge cases
testValidatePrice_setsPriceIsValidToFalseForNegativePrice
	"test that validatePrice sets priceIsValid to false for a negative price"

	self
		deny: [ (UpdateProdWithPrice newWithKey: 'A' Price: -10) priceIsValid ]
		description: 'priceIsValid should be false for a negative price'