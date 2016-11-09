testing - interface
testInitializeWithIDName_interface
	"test method interface"

	self
		assert: [ Customer new respondsTo: #initializeWithID:Name: ]
		description: 'Custome initializeWithName method does not exist'