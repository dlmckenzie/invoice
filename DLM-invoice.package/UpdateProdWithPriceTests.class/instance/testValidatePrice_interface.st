testing - interface
testValidatePrice_interface
	"test method interface"

	| app cli |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	self
		assert: [ UpdateProdWithPrice new respondsTo: #validatePrice ]
		description: 'UpdateProdWithPrice validatePrice does not exist'.
	self
		assert: [ (UpdateProdWithPrice newWithKey: 'A' Price: 'Part A') isMemberOf: UpdateProdWithPrice ]
		description: 'UpdateProdWithPrice validatePrice does not answer self'