testing - edge cases
testValidatePrice_setsPriceIsValidToTrueForNilPrice
	"test that validatePrice sets priceIsValid to true for a nil (missing) price"

	self
		assert: [ (UpdateProdWithPrice newWithKey: 'A' Price: nil) priceIsValid ]
		description: 'priceIsValid should be true for a nil price'