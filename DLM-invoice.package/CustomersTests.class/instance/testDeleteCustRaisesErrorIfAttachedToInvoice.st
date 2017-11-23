testing
testDeleteCustRaisesErrorIfAttachedToInvoice
	"test that delete raises error if the customer is associated to an invoice"

	| app cust invoice |
	app := App new.
	app start.
	cust := (Customer newWithName: (CustomerName newWithFirst: 'Lisa' Last: 'Smith')).
	"customers := Customers new."
	app domain customers addCust: cust.
	invoice := Invoice newWithCust: cust.
	"invoices := Invoices new."
	app domain invoices addInvoice: invoice.
	self should: [ app domain customers delete: cust ] raise: Error