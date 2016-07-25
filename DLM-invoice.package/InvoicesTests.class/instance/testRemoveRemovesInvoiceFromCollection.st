testing
testRemoveRemovesInvoiceFromCollection
	| cust invoice invoices |
	cust := Customer newWithFirst: 'Amy' Last: 'Schwartz'.
	invoice := Invoice newWithCust: cust.
	invoices := Invoices new.
	invoices add: invoice.
	self assert: [ invoices size = 1 ] description: 'setup for test failed'.
	invoices remove: invoice.
	self
		assert: [ invoices isEmpty ]
		description: 'invoice removal failed'