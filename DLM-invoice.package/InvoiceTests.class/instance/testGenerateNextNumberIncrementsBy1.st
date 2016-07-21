testing
testGenerateNextNumberIncrementsBy1
	| first second |
	first := Invoice generateNextNumber.
	second := Invoice generateNextNumber.
	self
		assert: [ second = (first + 1) ]
		description: 'invoice number not incrementing'