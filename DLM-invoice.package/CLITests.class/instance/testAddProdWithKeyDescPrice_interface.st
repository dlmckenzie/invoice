testing - product
testAddProdWithKeyDescPrice_interface
	"test method interface"

	self
		assert: [ CLI new respondsTo: #addProdWithKey:Desc:Price: ]
		description: 'cli addProdWithKey:Desc:Price doesn''t exist'.
	self
		assert: [ (CLI new addProdWithKey: 'A10' Desc: 'Part A10' Price: 49.99) isMemberOf: CLI ]
		description: 'cli addProdWithKey:Desc:Price: does not answer self'