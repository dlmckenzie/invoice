testing - interface
testNewWithID_interface
	self
		assert: [ ViewCust respondsTo: #newWithID: ]
		description: 'ViewCust newWithID method does not exist'.
	self
		assert: [ (ViewCust newWithID: 1) isMemberOf: ViewCust ]
		description: 'method did not answer with a ViewCust'