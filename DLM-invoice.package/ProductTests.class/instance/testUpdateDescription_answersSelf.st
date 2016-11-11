testing - interface
testUpdateDescription_answersSelf
	"test that method answers self"

	self
		assert: [ (Product new updateDescription: 'ABC') isMemberOf: Product ]
		description: 'Method did not answer with Product'