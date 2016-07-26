testing
testAddAddsInvoiceToCollection
	| cust invoice invoices |
	cust := Customer newWithFirst: 'Amy' Last: 'Schwartz'.
	invoice := Invoice newWithCust: cust.
	invoices := Invoices new.
	invoices addInvoice: invoice.
	self assert: [ invoices size = 1 ] description: 'invoice not added to collection' 