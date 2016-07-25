testing
testRetrieveByNumberAnswersNilIfNotFound
	self
		assert: [ (Invoices new retrieveByNumber: 25) isNil ]
		description: 'method should answer nil when invoice doesnt exist'