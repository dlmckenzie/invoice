testing - happy path
testValidatePrice_setsPriceIsValidFalseForNegatativePrice
	"test that priceIsValid is set to false when price is negative"

	self
		deny: [ (AddProdWithKeyDescPrice newWithKey: 'A10' Desc: 'Part A10' Price: -5) priceIsValid ]
		description: 'priceIsValid should be false for negative price'