testing
testRetrieveAllAnswersDictWithAll
	"test that this method answers a Products dict containing all products"

	| products prod |
	products := Products new.
	prod := Product newWithKey: 'A'.
	products add: prod.
	prod := Product newWithKey: 'B'.
	products add: prod.
	prod := Product newWithKey: 'C'.
	products add: prod.
	self
		assert: [ products retrieveAll size = 3 ]
		description: 'method should have answered a Products dict containing all products'