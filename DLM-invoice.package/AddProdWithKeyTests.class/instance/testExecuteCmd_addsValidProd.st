testing - happy path
testExecuteCmd_addsValidProd
	"test that executeCmd successfully adds valid product to products"

	| app cmd cli |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cmd := AddProdWithKey newWithKey: 'A100'.
	cmd executeCmd.
	self assert: [ app products size = 1 ] description: 'product not added'
	