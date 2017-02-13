testing - edge cases
testValidatePrice_setsPriceValidationErrorToTextForInvalidPrice
	"test that priceValidationError gets set to text describing error for an invalid price"
	
		self
		assert: [ (AddProdWithKeyDescPrice newWithKey: 'A10' Desc: 'Part A' Price: -3) priceValidationError isNotEmpty ]
		description: 'priceValidationError should be empty'