testing - edge cases
testExecuteCmd_doesNotAddEmptyStringProd
	"test that executeCmd does not add a product with an empty string"

	| app cmd cli |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cmd := AddProdWithKey newWithKey: ''.
	cmd executeCmd.
	self
		assert: [ app products isEmpty ]
		description: 'product with empty string for key should not have been added'