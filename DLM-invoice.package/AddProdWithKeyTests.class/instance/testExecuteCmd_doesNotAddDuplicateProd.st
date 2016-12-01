testing - edge cases
testExecuteCmd_doesNotAddDuplicateProd
	"test that executeCmd does not add a product with key that already exists"

	| app cmd cli key |
	key := 'A100'.
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	app products addProd: (Product newWithKey: key).
	self assert: [ app products size = 1 ] description: 'Test setup failure'.
	cmd := AddProdWithKey newWithKey: key.
	cmd executeCmd.
	self
		assert: [ app products size = 1 ]
		description: 'product with duplicate key should not have been added'