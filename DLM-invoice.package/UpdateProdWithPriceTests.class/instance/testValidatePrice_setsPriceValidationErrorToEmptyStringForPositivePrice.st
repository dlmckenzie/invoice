testing - happy path
testValidatePrice_setsPriceValidationErrorToEmptyStringForPositivePrice
	"test that validatePrice sets priceValidationError to empty string for a positive price"

	| app prod  |
	app := App new start.
	CLI new start: app.
	prod := Product newWithKey: 'A'.
	app products addProd: prod.
	prod updatePrice: 4.
	self
		assert: [ (UpdateProdWithPrice newWithKey: 'A' Price: 10) priceValidationError isEmpty ]
		description: 'priceValidationError should be empty string for nil price'