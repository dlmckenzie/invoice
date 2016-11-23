testing - edge cases
testValidatePrice_setsPriceIsValidTrueWhenPriceIsNil
	"test description"

	self
		assert: [ (Product newWithKey: 'A') validatePrice priceIsValid ]
		description: 'Product validatePrice should have answered true for nil price'