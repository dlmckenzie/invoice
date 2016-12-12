testing - interface
testNewWithKeyDesc_interface
	"test method interface"

	self
		assert: [ UpdateProdWithDesc respondsTo: #newWithProd:Desc: ]
		description: 'UpdateProdWithDesc newWithProd:Desc: doesn''t exist'.
	self
		assert: [ (UpdateProdWithDesc newWithProd: 'A10' Desc: 'Part A10') isMemberOf: UpdateProdWithDesc   ]
		description: 'method doesn''t answer self'