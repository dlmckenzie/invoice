testing - customer
testSearchCustByLast_interface

	| app cli |
	app := App new.
	cli := CLI new.
	app start.
	cli start: app.
	self assert: [ cli respondsTo: #searchCustByLast: ] description: 'searchCustByLast: method does not exist'.
	self assert: [ (cli searchCustByLast: 'Smith') isMemberOf: CLI ] description: 'method did not answer with self'
	