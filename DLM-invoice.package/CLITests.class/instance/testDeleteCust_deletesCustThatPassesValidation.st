testing - customer
testDeleteCust_deletesCustThatPassesValidation
	"test happy path - method deletes cust"

	| app cli cust |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cust := app domain customers addCust: (Customer newWithName: (CustomerName newWithFirst: 'Sara' Last: 'Smith')).
	self assert: [ app domain customers size = 1 ] description: 'cust did not get added'.
	cli deleteCust: cust id.
	self assert: [ app domain customers isEmpty ] description: 'cust did not get added'