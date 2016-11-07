testing - interface
testInitializeWithKey_interface
	"test method interface"
	| cmd |
	cmd := AddProdWithKey new.

	self
		assert: [ cmd respondsTo: #initializeWithKey: ]
		description: 'AddProdWithKey initializeWithKey: method does not exist'.
	self
		assert: [ (cmd initializeWithKey: 'Item A') isMemberOf: AddProdWithKey ]
		description: 'method did not answer with an AddProdWithKey command'