testing - edge cases
testExecuteCmd_doesNotAddDuplicateProd
	"test that executeCmd does not add a product with key that already exists"

	| app key |
	key := 'A100'.
	app := App new start.
	AddProdWithKey initializeWithApp:  app.
	app products addProd: (Product newWithKey: key).
	self assert: [ app products size = 1 ] description: 'Test setup failure'.
	(AddProdWithKey newWithKey: key) executeCmd.
	self
		assert: [ app products size = 1 ]
		description: 'product with duplicate key should not have been added'