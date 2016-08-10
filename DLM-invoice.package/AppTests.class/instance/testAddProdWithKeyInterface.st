testing
testAddProdWithKeyInterface
	"test interface"

	self
		assert: [ (App >> #addProdWithKey:) argumentNames size = 1 ]
		description: 'method defined with incorrect number of arguments'.
		
	self assert: [ (App new start addProdWithKey: 'A') isMemberOf: App ] description: 'Method did not answer with App'