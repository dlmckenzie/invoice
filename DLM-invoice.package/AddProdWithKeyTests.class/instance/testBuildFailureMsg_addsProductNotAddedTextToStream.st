testing - edge cases
testBuildFailureMsg_addsProductNotAddedTextToStream
	"test"

	| app cmd cli |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cmd := AddProdWithKey newWithKey: 'A10'.
	cmd executeCmd.
	cmd := AddProdWithKey newWithKey: 'A10'.
	cmd executeCmd.
	self
		assert: [ cmd stream contents includesSubstring: 'product not added' ]
		description: 'The text ''product not added'' was not displayed to user'