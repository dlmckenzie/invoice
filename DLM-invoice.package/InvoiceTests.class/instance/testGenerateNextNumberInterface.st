testing
testGenerateNextNumberInterface
	self
		assert: [ Invoice respondsTo: #generateNextNumber ]
		description: 'method generateNextInvoiceNumber does not exist'.
	self
		assert: [ Invoice generateNextNumber isKindOf: Integer ]
		description: 'Method did not answer with Integer'