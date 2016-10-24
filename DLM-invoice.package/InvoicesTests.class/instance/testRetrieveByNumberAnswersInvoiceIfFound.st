testing
testRetrieveByNumberAnswersInvoiceIfFound
	| invoice invoices |
	invoice := Invoice newWithCust: (Customer newWithName: (CustomerName newWithFirst: 'Lia' Last: 'Diamond')).
	invoices := Invoices new.
	invoices addInvoice: invoice.
	self assert: [ (invoices retrieveByNumber: invoice number) = invoice ] description: 'invoice retrieval failed'