testing - exceptions
testNoAssociatedInvoicesRaisesErrorForInvalidCust
	"test method raises error for invalid cust"

	| app cli |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	"id := (app customers addCust: (Customer newWithFirst: 'Joe' Last: 'Smith')) id."
	self
		should: [ (DeleteCust newWithID: 1) noAssociatedInvoices ]
		raise: Error
		description: 'method should raise error for invalid cust'