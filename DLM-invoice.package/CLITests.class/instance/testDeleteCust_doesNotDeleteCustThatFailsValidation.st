testing - customer
testDeleteCust_doesNotDeleteCustThatFailsValidation
	| app cli |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	app domain customers addCust: (Customer newWithName: (CustomerName newWithFirst: 'Sara' Last: 'Smith')).
	self assert: [ app domain customers size = 1 ] description: 'cust did not get added'.
	cli deleteCust: -1.
	self assert: [ app domain customers size = 1 ] description: 'cust should not have been deleted'