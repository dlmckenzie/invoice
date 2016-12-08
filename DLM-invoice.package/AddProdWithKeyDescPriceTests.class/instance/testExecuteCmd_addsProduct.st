testing - happy path
testExecuteCmd_addsProduct
	"test happy path - method adds product to products"

	| app |
	app := App new start.
	AddProdWithKeyDescPrice initializeWithApp: app.
	(AddProdWithKeyDescPrice newWithKey: 'A100' Desc: 'Part A100' Price: 39.99) executeCmd.
	self assert: [ app products size = 1 ] description: 'product did not get added'