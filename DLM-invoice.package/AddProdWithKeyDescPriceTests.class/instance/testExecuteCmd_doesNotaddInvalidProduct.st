testing - edge cases
testExecuteCmd_doesNotaddInvalidProduct
	"test that method does not add invalid product to products"

	| app |
	app := App new start.
	AddProdWithKeyDescPrice initializeWithApp: app.
	(AddProdWithKeyDescPrice newWithKey: 'A100' Desc: 'Part A100' Price: 'unknown') executeCmd.
	self deny: [ app domain products size = 1 ] description: 'product did not get added'