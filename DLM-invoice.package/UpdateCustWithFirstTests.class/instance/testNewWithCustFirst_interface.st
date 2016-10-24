testing - interface
testNewWithCustFirst_interface
	self
		assert: [ UpdateCustWithFirst respondsTo: #newWithCust:First: ]
		description: 'UpdateCustWithFirest newWithCust:First:  method does not exist'. self
		assert: [ (UpdateCustWithFirst newWithCust: 1 First: 'Smith') isMemberOf: UpdateCustWithFirst ]
		description: 'method did not answer with a UpdateCustWithFirst'