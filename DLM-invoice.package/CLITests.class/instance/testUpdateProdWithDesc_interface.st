testing - product
testUpdateProdWithDesc_interface
	"test method interface"

	self
		assert: [ CLI new respondsTo: #updateProd:WithDesc: ]
		description: 'cli updateProdWithDesc doesn''t exist'.
	self
		assert: [ (CLI new updateProd: 'A22' WithDesc: 'Part A22') isMemberOf: CLI ]
		description: 'cli updateProd:WithDesc: does not answer self'