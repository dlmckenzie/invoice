testing - happy path
testValidatePrice_setsPriceIsValidTrueForPositiveNumber
	"test description"
	
	| prod |
	prod := Product newWithKey: 'A'.
	prod updatePrice: 40.
	self
		assert: [ prod priceIsValid ]
		description: 'Product validatePrice should have answered true for positive price'