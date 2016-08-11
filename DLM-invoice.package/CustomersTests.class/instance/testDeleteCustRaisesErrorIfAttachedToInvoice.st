testing
testDeleteCustRaisesErrorIfAttachedToInvoice
	"test that delete raises error if the customer is associated to an invoice"

	| cust customers invoice invoices |
	cust := Customer newWithFirst: 'Joe' Last: 'Marcus'.
	customers := Customers new.
	customers addCust: cust.
	invoice := Invoice newWithCust: cust.
	invoices := Invoices new.
	invoices addInvoice: invoice.
	cust accessInvoices: invoices.
	self should: [ customers delete: cust ] raise: Error