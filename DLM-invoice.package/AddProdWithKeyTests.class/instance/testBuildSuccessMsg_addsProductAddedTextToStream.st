testing - happy path
testBuildSuccessMsg_addsProductAddedTextToStream
	"test"

	| app cmd cli |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cmd := AddProdWithKey newWithKey: 'A100'.
	cmd executeCmd.
	self assert: [ cmd stream contents includesSubstring: 'Product added' ] description: 'The text ''Product added'' was not displayed to user'