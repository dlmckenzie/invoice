testing - edge cases
testValidatePrice_setsPriceIsValidToTrueForZeroPrice
	"test that validatePrice sets priceIsValid to true for a price set to 0"

	self
		assert: [ (UpdateProdWithPrice newWithKey: 'A' Price: 0) priceIsValid ]
		description: 'priceIsValid should be treu for a price set to 0'
	