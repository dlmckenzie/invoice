testing - interface
testValidateDesc_interface
	"test method interface"

	| app cli |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	self
		assert: [ UpdateProdWithDesc new respondsTo: #validateDesc ]
		description: 'UpdateProdWithDesc validateDesc does not exist'.
	self
		assert: [ (UpdateProdWithDesc newWithProd: 'A' Desc: 'Part A') isMemberOf: UpdateProdWithDesc ]
		description: 'UpdateProdWithDesc validateDesc does not answer self'