testing - customer
testDeleteCustDeletesCustThatPassesValidation
	"test happy path - method deletes cust"

	| app cli cust |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	cust := app customers addCust: (Customer newWithFirst: 'Sara' Last: 'Smith').
	self assert: [ app customers size = 1 ] description: 'cust did not get added'.
	cli deleteCust: cust id.
	self assert: [ app customers isEmpty  ] description: 'cust did not get added'.