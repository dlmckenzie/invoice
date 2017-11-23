testing - edge cases
testExecuteCmdDoesntDeleteCustWhenValidationFails
	"test happy path - method deletes cust when validation passes"

	| app cmd cli |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	app domain customers addCust: (Customer newWithName: (CustomerName newWithFirst: 'Sara' Last: 'Smith')).
	self assert: [ app domain customers size = 1 ] description: 'customer not added'.
	cmd := DeleteCust newWithID: 0.
	cmd executeCmd.
	self assert: [ app domain customers size = 1 ] description: 'customer should not have been deleted'