testing
testNoAssociatedInvoicesInterface
	"test method interface"

	| app cli id |
	self
		assert: [ DeleteCust new respondsTo: #noAssociatedInvoices ]
		description: 'method noAssociatedInvoices does not exist'.
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	id := (app customers addCust: (Customer newWithFirst: 'Joe' Last: 'Smith')) id.
	self
		assert: [ (DeleteCust newWithID: id) noAssociatedInvoices isKindOf: Boolean ]
		description: 'method must answer boolean'