testing - interface
testNewWithKeyPrice_interface
	"test method interface"

	self
		assert: [ UpdateProdWithPrice respondsTo: #newWithKey:Price: ]
		description: 'UpdateProdWithPrice newWithProd:Price: doesn''t exist'.
	self
		assert: [ (UpdateProdWithPrice newWithKey: 'A10' Price: 'Part A10') isMemberOf: UpdateProdWithPrice   ]
		description: 'method doesn''t answer self'