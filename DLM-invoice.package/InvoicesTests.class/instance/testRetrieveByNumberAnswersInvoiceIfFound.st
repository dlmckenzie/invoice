testing
testRetrieveByNumberAnswersInvoiceIfFound
	| invoice invoices |
	invoice := Invoice newWithCust: (Customer newWithFirst: 'Lia' Last: 'Diamond').
	invoices := Invoices new.
	invoices add: invoice.
	self
		assert: [ (invoices retrieveByNumber: invoice number) = invoice ]
		description: 'invoice retrieval failed'