testing - interface
testNewWithID_interface
	self
		assert: [ DeleteCust respondsTo: #newWithID: ]
		description: 'DeleteCust newWithCust: method does not exist'.
	self
		assert:
			[ (DeleteCust newWithID: 1) isMemberOf: DeleteCust]
		description: 'method did not answer with a DeleteCust command object'