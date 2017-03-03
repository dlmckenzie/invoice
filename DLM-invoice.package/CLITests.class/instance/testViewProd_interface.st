testing - product
testViewProd_interface
	"test method interface"

	| app cli |
	app := App new.
	cli := CLI new.
	app start.
	cli start: app.
	self assert: [ cli respondsTo: #viewProd: ] description: 'ViewProd: method does not exist'.
	self
		assert: [ (cli viewProd: 'A10') isMemberOf: CLI ]
		description: 'method did not answer with self'