testing - edge cases
testExecuteCmd_doesNotAddEmptyStringProd
	"test that executeCmd does not add a product with an empty string"

	| app |
	app := App new start.
	app start.
	AddProdWithKey initializeWithApp: app.
	(AddProdWithKey newWithKey: '') executeCmd.
	self
		assert: [ app domain products isEmpty ]
		description: 'product with empty string for key should not have been added'