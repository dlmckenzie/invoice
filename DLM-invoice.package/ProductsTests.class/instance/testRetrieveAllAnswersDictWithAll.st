testing
testRetrieveAllAnswersDictWithAll
	"test that this method answers a Products dict containing all products"

	| products |
	products := Products new
		addWithKey: 'A';
		addWithKey: 'B';
		addWithKey: 'C'.
	self
		assert: [ products retrieveAll size = 3 ]
		description: 'method should have answered a Products dict containing all products'