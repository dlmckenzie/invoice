testing
testRetrieveAllAnswersEmptyDictWhenNoCusts
	"test that this method answers a Products dict containing all products"

	self
		assert: [ Products new retrieveAll isEmpty ]
		description: 'method should have answered a Products dict containing zero products'