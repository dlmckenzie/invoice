testing - customer
testAddCustWithFirstLastInterface
	"test method interface"

	| app cli |
	app := App new.
	cli := CLI new.
	app start.
	cli start: app.
	self
		assert: [ cli respondsTo: #addCustWithFirst:Last: ]
		description: 'addCustWithFirst:Last: method does not exist'. self
		assert: [ (cli addCustWithFirst: 'Joe' Last: 'Smith') isMemberOf: CLI ]
		description: 'method did not answer with a Customer'