testing - interface
testInitializeWithKey_interface
	"test method interface"

	self
		assert: [ AddProdWithKey new respondsTo: #initializeWithKey: ]
		description: 'AddProdWithKey initializeWithKey: method does not exist'.
	self
		assert: [ (AddProdWithKey new initializeWithKey: 'Item A') isMemberOf: AddProdWithKey ]
		description: 'method did not answer with an AddProdWithKey command'