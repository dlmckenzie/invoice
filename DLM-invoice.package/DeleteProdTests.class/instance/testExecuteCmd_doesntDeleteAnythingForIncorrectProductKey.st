testing - edge cases
testExecuteCmd_doesntDeleteAnythingForIncorrectProductKey
| app prod key cmd |
	app := App new start.
	DeleteProd initializeWithApp: app.
	key := 'A10'.
	prod := Product newWithKey: key.
	app domain products addProd: prod.
	self assert: [ app domain products size = 1 ] description: 'test not valid'.
	cmd := DeleteProd newWithKey: 'B10'.
	cmd executeCmd.
	self deny: [ app domain products isEmpty ] description: 'product should have been deleted'
	