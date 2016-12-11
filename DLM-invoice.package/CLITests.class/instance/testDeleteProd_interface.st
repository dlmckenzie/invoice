testing - product
testDeleteProd_interface
	"test method interface"

	| app cli |
	app := App new.
	cli := CLI new.
	app start.
	cli start: app.
	self assert: [ cli respondsTo: #deleteProd: ] description: 'deleteProd: method does not exist'.
	self
		assert: [ (cli deleteProd: 'A10') isMemberOf: CLI ]
		description: 'method did not answer with self'