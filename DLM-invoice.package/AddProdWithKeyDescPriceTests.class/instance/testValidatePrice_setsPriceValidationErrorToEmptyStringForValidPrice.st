testing - happy path
testValidatePrice_setsPriceValidationErrorToEmptyStringForValidPrice
	"test that priceValidationError gets set to empty string for a valid price"
	
		self
		assert: [ (AddProdWithKeyDescPrice newWithKey: 'A10' Desc: 'Part A' Price: 40) priceValidationError isEmpty ]
		description: 'priceValidationError should be empty'