testing - product
testUpdateProdWithDesc_interface
	"test method interface"

	self
		assert: [ CLI new respondsTo: #updateProd:WithDesc: ]
		description: 'cli updateProdWithDesc doesn''t exist'.
	self
		assert: [ (CLI new updateProd: 122 WithDesc: 'A10') isMemberOf: CLI ]
		description: 'cli updateProd:WithDesc: does not answer self'