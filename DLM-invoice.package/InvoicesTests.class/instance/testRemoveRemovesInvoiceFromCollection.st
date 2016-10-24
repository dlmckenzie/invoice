testing
testRemoveRemovesInvoiceFromCollection
	| cust invoice invoices |
	cust := Customer newWithName: (CustomerName newWithFirst: 'Amy' Last: 'Schwartz').
	invoice := Invoice newWithCust: cust.
	invoices := Invoices new.
	invoices addInvoice: invoice.
	self assert: [ invoices size = 1 ] description: 'setup for test failed'.
	invoices delete: invoice.
	self assert: [ invoices isEmpty ] description: 'invoice removal failed'