testing
testAddCustWithFirstLastPreventsAddingCustWithEmptyLastName
	"test edge case - customer not added with empty last name"

	| app cli |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cli addCustWithFirst: 'Joe' Last: ''.
	self assert: [ app customers size = 0 ] description: 'customer should not have been added'