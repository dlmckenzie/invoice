testing
testAddProdWithKeyDescPriceInterface
	"test that ethod exists"

	self assert: [ App new respondsTo: #addProdWithKey:Desc:Price: ] description: 'method does not exist'.
	self
		assert: [ (App new start addProdWithKey: 'A' Desc: 'Part A' Price: 12.00) isMemberOf: App ]
		description: 'Method did not answer with App'.
	self
		assert: [ (App >> #addProdWithKey:Desc:Price:) argumentNames size = 3 ]
		description: 'method defined with incorrect number of arguments'