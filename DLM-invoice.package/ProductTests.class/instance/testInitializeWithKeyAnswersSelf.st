testing
testInitializeWithKeyAnswersSelf
	"test that method answers self"

	self
		assert: [ (Product newWithKey: 'PR01') isMemberOf: Product ]
		description: 'Method did not answer with Product'