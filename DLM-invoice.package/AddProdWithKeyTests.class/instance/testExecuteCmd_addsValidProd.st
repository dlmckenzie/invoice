testing - happy path
testExecuteCmd_addsValidProd
	"test that executeCmd successfully adds valid product to products"

	| app |
	app := App new start.
	AddProdWithKey initializeWithApp: app.
	(AddProdWithKey newWithKey: 'A100') executeCmd .
	self assert: [ app products size = 1 ] description: 'product not added'
	