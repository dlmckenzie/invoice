testing - interface
testInitializeWithIDName_interface
	"test method interface"

	self
		assert: [ Customer new respondsTo: #initializeWithID:Name: ]
		description: 'Custome initializeWithName method does not exist'.
	self
		assert: [ (Customer new initializeWithID: nil Name: nil) isMemberOf: Customer ]
		description: 'method did not answer with a Customer'