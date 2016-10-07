testing - interface
testInitializeWithLast_interface
	"test method's interface"

	self
		assert: [ LastNameParam new respondsTo: #initializeWithLast: ]
		description: 'method not recognzied'.
	self
		assert: [ (LastNameParam new initializeWithLast: 'Smith') isMemberOf: LastNameParam ]
		description: 'method not answering with instance of self'