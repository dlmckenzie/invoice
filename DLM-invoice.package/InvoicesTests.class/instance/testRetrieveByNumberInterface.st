testing
testRetrieveByNumberInterface
	self
		assert: [ Invoices new respondsTo: #retrieveByNumber: ]
		description: 'method Invoices retrieveAByNumber: does not exist'.
		

		
