testing - interface
testNoAssociatedInvoices_interface
	"test method interface"

	| app cli id |
	self
		assert: [ DeleteCust new respondsTo: #noAssociatedInvoices ]
		description: 'method noAssociatedInvoices does not exist'.
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	"app customers accessInvoices: app invoices."
	id := (app customers addCust: (Customer newWithName: (CustomerName newWithFirst: 'Joe' Last: 'Smith'))) id.
	self
		assert: [ (DeleteCust newWithID: id) noAssociatedInvoices isKindOf: Boolean ]
		description: 'method must answer boolean'