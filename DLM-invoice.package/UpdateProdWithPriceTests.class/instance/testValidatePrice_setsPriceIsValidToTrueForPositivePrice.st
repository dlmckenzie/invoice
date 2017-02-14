testing - happy path
testValidatePrice_setsPriceIsValidToTrueForPositivePrice
	"test that validatePrice sets priceIsValid to true for a positive price"

	self
		assert: [ (UpdateProdWithPrice newWithKey: 'A' Price: 6) priceIsValid ]
		description: 'priceIsValid should be true for a postive price'
	