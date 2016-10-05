testing - interface
testInitializeWithFirst_interface
	"test method's interface"

	self
		assert: [ FirstNameParam new respondsTo: #initializeWithFirst: ]
		description: 'method not recognzied'.
	self
		assert: [ (FirstNameParam new initializeWithFirst: 'Joe') isMemberOf: FirstNameParam ]
		description: 'method not answering with instance of self'