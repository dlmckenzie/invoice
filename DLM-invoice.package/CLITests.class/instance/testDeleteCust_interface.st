testing - customer
testDeleteCust_interface
	"test method interface"

	| app cli |
	app := App new.
	cli := CLI new.
	app start.
	cli start: app.
	self
		assert: [ cli respondsTo: #deleteCust: ]
		description: 'deleteCust: method does not exist'.
	self
		assert: [ (cli deleteCust: 1) isMemberOf: CLI ]
		description: 'method did not answer with self'