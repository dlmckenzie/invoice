testing - interface
testNewWithKey_interface
	"test method interface"

	self
		assert: [ AddProdWithKey respondsTo: #newWithKey: ]
		description: 'AddProdWithKey newWithKey method does not exist'.
	self
		assert: [ (AddProdWithKey newWithKey: 'Item A') isMemberOf: AddProdWithKey ]
		description: 'method did not answer with an AddProdWithKey command'