testing - happy path
testValidatePrice_setsValidPriceTrueForValidPrice
	"test interface"

	self
		assert: [ (AddProdWithKeyDescPrice newWithKey: 'A10' Desc: 'Part A10' Price: 40) priceIsValid ]
		description: 'priceIsValid should be true'