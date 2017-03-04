testing - customer
testViewCust_interface
	"test method interface"

	| app cli |
	app := App new.
	cli := CLI new.
	app start.
	cli start: app.
	self assert: [ cli respondsTo: #viewCust: ] description: 'ViewCust: method does not exist'.
	self
		assert: [ (cli viewCust: 20) isMemberOf: CLI ]
		description: 'method did not answer with self'