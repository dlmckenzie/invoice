testing
testProdNameAnswersWithString
	"test that method answers new instance of string"

	self
		assert: [ ((Product newWithKey: 'PR01') updateDescription: 'important part') name isKindOf: String ]
		description: 'Method did not answer with String'