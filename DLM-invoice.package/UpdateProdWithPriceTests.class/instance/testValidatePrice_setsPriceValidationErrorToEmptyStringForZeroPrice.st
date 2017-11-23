testing - edge cases
testValidatePrice_setsPriceValidationErrorToEmptyStringForZeroPrice
	"test that validatePrice sets priceValidationError to emtpy string for a price set to 0"

	| app prod |
	app := App new start.
	CLI new start: app.
	prod := Product newWithKey: 'A'.
	app domain products addProd: prod.
	prod updatePrice: 4.
	self
		assert: [ (UpdateProdWithPrice newWithKey: 'A' Price: 0) priceValidationError isEmpty ]
		description: 'priceValidationError should be empty string for nil price'