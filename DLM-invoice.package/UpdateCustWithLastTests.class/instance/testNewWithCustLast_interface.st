testing - interface
testNewWithCustLast_interface
	self
		assert: [ UpdateCustWithLast respondsTo: #newWithCust:Last: ]
		description: 'UpdateCustWithFirest newWithCust:Last:  method does not exist'.
	self
		assert: [ (UpdateCustWithLast newWithCust: 1 Last: 'Smith') isMemberOf: UpdateCustWithLast ]
		description: 'method did not answer with a UpdateCustWithLast'