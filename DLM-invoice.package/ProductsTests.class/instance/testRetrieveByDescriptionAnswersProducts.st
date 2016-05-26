testing
testRetrieveByDescriptionAnswersProducts
	"test that this method answers boolean"

	self
		assert: [ (Products new retrieveByDescription: 'A') isMemberOf: Products ]
		description: 'method did not answer Products'