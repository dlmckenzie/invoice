testing
testRetrieveAllAnswersCollectionOfAllInvoices

	| invoices invoice |
	invoices := Invoices new.
	10 timesRepeat: [ invoice := Invoice newWithCust: (Customer newWithFirst: 'Dave' Last: 'Smith'). invoices addInvoice: invoice ].

	self
		assert: [ Invoices new retrieveAll isMemberOf: Invoices ]
		description: 'method did not answer instance of Invoices'. 
	self 
		assert: [ invoices size = 10 ]
		description: 'invoices not correctly added to collection' 