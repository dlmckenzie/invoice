testing
testRetrieveAllAnswersProducts
	"test that this method answers a Products dict"

	self
		assert: [ Products new retrieveAll isMemberOf: Products ]
		description: 'method should have answered aProducts'