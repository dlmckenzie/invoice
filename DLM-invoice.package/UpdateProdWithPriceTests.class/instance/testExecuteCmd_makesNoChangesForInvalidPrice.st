testing - edge cases
testExecuteCmd_makesNoChangesForInvalidPrice
	"test executeCmd makes no changes when validation fails"

	| app prod cli cmd price |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	price := 10.
	prod := Product newWithKey: 'A'.
	prod updatePrice: price.
	app domain products addProd: prod.
	self assert: [ app domain products size = 1 ] description: 'test setup failed'.
	cmd := UpdateProdWithPrice newWithKey: 'A' Price: price negated.
	cmd executeCmd.
	self deny: [ (app domain products retrieveByKey: 'A') price = price negated ] description: 'price not changed'