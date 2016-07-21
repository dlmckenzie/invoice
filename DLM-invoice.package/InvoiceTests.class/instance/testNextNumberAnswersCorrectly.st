testing
testNextNumberAnswersCorrectly

	Invoice initialize.
	self 
		assert: [ Invoice nextNumber isNil ]
		description: 'nextNumber should be nil after Invoice initialization'.
	Invoice generateNextNumber. 
	self
		assert: [ Invoice nextNumber = 1 ]
		description: 'nextNumber should be 1'