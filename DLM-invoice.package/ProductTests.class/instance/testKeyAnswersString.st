testing
testKeyAnswersString
	"test that method answers with String"

	self
		assert: [ (Product newWithKey:'PR01') key isKindOf: String ]
		description: 'Method did not answer with String'