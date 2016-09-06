testing
testExecuteCmdAddsCust
	"test happy path - method adds customer to customers"

	| app cmd |
	app := App new.
	app start.
	cmd := AddCustWithFirstLast newWithFirst: 'Joe' Last: 'Smith' App: app.
	cmd executeCmd.
	self assert: [ app customers size = 1 ] description: 'customer not added'