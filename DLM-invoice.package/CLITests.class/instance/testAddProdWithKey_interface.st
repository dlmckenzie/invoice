testing - product
testAddProdWithKey_interface
	"test method interface"
	
	self
		assert: [ CLI new respondsTo: #addProdWithKey: ]
		description: 'cli addProdWithKey doesn''t exist'.
		
	self
		assert: [ (CLI new addProdWithKey: 'A10') isMemberOf: CLI  ]
		description: 'cli addProdWithKey does not answer self'
