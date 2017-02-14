testing - edge cases
testValidatePrice_setsPriceIsValidToFalseForStringPrice
	"test that validatePrice sets priceIsValid to false for a string price"

	self
		deny: [ (UpdateProdWithPrice newWithKey: 'A' Price: '12.99') priceIsValid ]
		description: 'priceIsValid should be false for a price represented as a string'