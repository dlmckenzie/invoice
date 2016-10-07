testing - customer
testDeleteCust_doesNotDeleteCustThatFailsValidation
	| app cli |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	app customers addCust: (Customer newWithFirst: 'Sara' Last: 'Smith').
	self assert: [ app customers size = 1 ] description: 'cust did not get added'.
	cli deleteCust: -1.
	self assert: [ app customers size = 1 ] description: 'cust should not have been deleted'