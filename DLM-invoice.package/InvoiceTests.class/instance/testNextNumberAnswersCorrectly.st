testing
testNextNumberAnswersCorrectly

	Invoice initialize.
	self 
		assert: [ Invoice nextNumber = 1 ]
		description: 'nextNumber should be 1 after Invoice initialization'.
	Invoice generateNextNumber. 
	self
		assert: [ Invoice nextNumber = 2 ]
		description: 'nextNumber should be 2'