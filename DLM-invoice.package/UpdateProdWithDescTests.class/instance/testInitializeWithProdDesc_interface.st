testing - interface
testInitializeWithProdDesc_interface
	"test method exists"

	self
		assert: [ UpdateProdWithDesc new respondsTo: #initializeWithProd:Desc: ]
		description: 'UpdateProdWithDesc initializeWithProd:Desc: doesn''t exist'.
	self
		assert: [ ((UpdateProdWithDesc new) initializeWithProd: 'A10' Desc: 'Part A10') isMemberOf: UpdateProdWithDesc    ]
		description: 'UpdateProdWithDesc initializeWithProd:Desc: doesn''t answer self'