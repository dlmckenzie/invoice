testing - happy path
testNoAssociatedInvoicesAnswersTrueWhenCustHasNoInvoices
	"test method answers true when no invoices are associated with cust"

	| app cli id |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	id := (app customers addCust: (Customer newWithName: (CustomerName newWithFirst: 'Joe' Last: 'Smith'))) id.
	self
		assert: [ (DeleteCust newWithID: id) noAssociatedInvoices ]
		description: 'method must answer boolean'