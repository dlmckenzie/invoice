testing - happy path
testExecuteCmd_updatesProdToNewValidPrice
	"test executeCmd modifies price of product when validation passes"

	| app prod cli cmd price |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	price := 20.
	prod := Product newWithKey: 'A'.
	prod updatePrice: 10.
	app products addProd: prod.
	self assert: [ app products size = 1 ] description: 'test setup failed'.
	cmd := UpdateProdWithPrice newWithKey: 'A' Price: price.
	cmd executeCmd.
	self assert: [ (app products retrieveByKey: 'A') price = price ] description: 'price not changed'