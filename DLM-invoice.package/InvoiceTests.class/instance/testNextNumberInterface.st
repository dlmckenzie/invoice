testing
testNextNumberInterface

	self 
		assert: [ Invoice respondsTo: #nextNumber ]
		description: 'Invoice nextNumber does not exist'.
		
	self
		assert: [ Invoice nextNumber isKindOf: Integer ]
		description: 'Method did not answer with integer' 