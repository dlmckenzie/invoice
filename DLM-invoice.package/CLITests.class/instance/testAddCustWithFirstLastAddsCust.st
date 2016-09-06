testing
testAddCustWithFirstLastAddsCust
	"test happy path - method adds customer to customers"

	| app cli |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cli addCustWithFirst: 'Joe' Last: 'Smith'.
	self assert: [ app customers size = 1 ] description: 'customer not added'.
	