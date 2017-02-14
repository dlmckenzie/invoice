testing - edge cases
testValidatePrice_setsPriceValidationErrorToTextForUnchangedPrice
	"test that validatePrice sets priceValidationError to string for an unchanged price"

	| app cli cmd price prod |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	price := 12.
	prod := Product newWithKey: 'A'.
	prod updatePrice: price.
	app products addProd: prod.
	cmd := UpdateProdWithPrice newWithKey: 'A' Price: price.
	self
		assert: [ cmd priceValidationError isNotEmpty ]
		description: 'priceValidationError should be a non-empty string for an unchangd price'