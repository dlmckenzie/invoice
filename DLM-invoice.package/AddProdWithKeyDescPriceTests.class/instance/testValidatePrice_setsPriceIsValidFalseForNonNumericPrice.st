testing - happy path
testValidatePrice_setsPriceIsValidFalseForNonNumericPrice
	"test that priceIsValid is set to false when price is not a number"

	self
		deny: [ (AddProdWithKeyDescPrice newWithKey: 'A10' Desc: 'Part A10' Price: 'forty') priceIsValid ]
		description: 'priceIsValid should be false for non-numeric price'