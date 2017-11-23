testing - happy path
testExecuteCmd_addsCust
	"test happy path - method adds customer to customers"

	| app cmd cli |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cmd := AddCustWithFirstLast newWithFirst: 'Joe' Last: 'Smith'.
	cmd executeCmd.
	self assert: [ app domain customers size = 1 ] description: 'customer not added'