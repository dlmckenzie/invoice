testing - interface
testBuildSuccessMsgInterface
	"test method interface"

	| cmd app cli|
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	self
		assert: [ SearchProdByDesc new respondsTo: #buildSuccessMsg ]
		description: 'SearchProdByDesc buildSuccessMsg method does not exist'.
	cmd := SearchProdByDesc newWithDesc: 'C'.
	cmd executeCmd.
	self
		assert: [ cmd buildSuccessMsg isMemberOf: SearchProdByDesc  ]
		description: 'SearchProdByDesc buildSuccessMsg method did not answer self'