testing - customer
testAddCustWithFirstLast_addsCustWithEmptyFirstName
	"test edge case - customer gets added even with missing first name"

	| app cli |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cli addCustWithFirst: '' Last: 'Smith'.
	self assert: [ app domain customers size = 1 ] description: 'customer not added'