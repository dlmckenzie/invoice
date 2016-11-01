testing - interface
testInitializeWithID_interface
	self
		assert: [ ViewCust new respondsTo: #initializeWithID: ]
		description: 'ViewCust initializeWithID method does not exist'.
	self
		assert: [ ((ViewCust new) initializeWithID: 1) isMemberOf: ViewCust ]
		description: 'method did not answer with a ViewCust'