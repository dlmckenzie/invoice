testing
testDesciptionAnswersString
	"should answer with a string"

	self
		assert: [ (Product new updateDescription: 'Part ABC') description isKindOf: String ]
		description: 'method did not answer with String'