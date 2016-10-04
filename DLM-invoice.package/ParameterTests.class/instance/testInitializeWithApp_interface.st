testing - interface
testInitializeWithApp_interface
	"test interface"

	self
		assert: [ Parameter respondsTo: #initializeWithApp: ]
		description: 'Parameter class method initializeWithApp: does not exist'