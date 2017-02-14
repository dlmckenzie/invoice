testing - edge cases
testValidatePrice_setsPriceIsValidToFalseForUnchangedPrice
	"test that validatePrice sets PriceIsValid to false for an unchanged price"

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
	self deny: [ cmd priceIsValid ] description: 'priceIsValid should be false for an unchangd price'