testing
testNoAssociatedInvoicesAnswersFalseWhenCustHasInvoices
	"test method answers true when no invoices are associated with cust"

	| app cli c invoice custID |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	c := app customers addCust: (Customer newWithFirst: 'Joe' Last: 'Smith').
	invoice := Invoice newWithCust: c.
	app invoices addInvoice: invoice.
	custID := c id.
	c accessInvoices: app invoices.
	self
		deny: [ (DeleteCust newWithID: custID) noAssociatedInvoices ]
		description: 'method should answer false'