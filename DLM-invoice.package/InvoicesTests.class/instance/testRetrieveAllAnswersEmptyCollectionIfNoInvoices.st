testing
testRetrieveAllAnswersEmptyCollectionIfNoInvoices
	"test that method answers an empty Invoices collection
	 if no invoices exist"
	
	self
		assert: [ Invoices new retrieveAll isMemberOf: Invoices ]
		description: 'method did not answer instance of Invoices'. 
	self 
		assert: [ Invoices new retrieveAll isEmpty ]
		description: 'method should have answered empty collection' 