testing
testDescriptionAnswersDescription
	"should answer with product name"

	| description |
	description := 'Part ABC'.
	self
		assert: [ (Product new updateDescription: 'Part ABC') description = description ]
		description: 'method did not answer with correct product name'