testing - happy path
testValidatePrice_setsPriceIsValidToTrueForValidPrice
	"test that descIsValid is set to true for a valid price"

	self
		assert: [ (AddProdWithKeyDescPrice newWithKey: 'A10' Desc: 'Part A10' Price: 40) priceIsValid ]
		description: 'priceIsValid should be true'