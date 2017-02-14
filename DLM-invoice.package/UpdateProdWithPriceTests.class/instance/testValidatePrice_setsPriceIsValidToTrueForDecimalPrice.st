testing - happy path
testValidatePrice_setsPriceIsValidToTrueForDecimalPrice
	"test that validatePrice sets priceIsValid to true for a price containing a decimal"

	self
		assert: [ (UpdateProdWithPrice newWithKey: 'A' Price: 7.99) priceIsValid ]
		description: 'priceIsValid should be true for a price containing a decimal'