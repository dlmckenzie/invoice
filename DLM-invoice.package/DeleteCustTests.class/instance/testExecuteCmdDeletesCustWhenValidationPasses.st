testing - happy path
testExecuteCmdDeletesCustWhenValidationPasses
	"test happy path - method deletes cust when validation passes"

	| app cmd cli cust |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cust := app domain customers addCust: (Customer newWithName: (CustomerName newWithFirst: 'Sara' Last: 'Smith')).
	self assert: [ app domain customers size = 1 ] description: 'customer not added'.
	cmd := DeleteCust newWithID: cust id.
	cmd executeCmd.
	self assert: [ app domain customers isEmpty ] description: 'customer not deleted'