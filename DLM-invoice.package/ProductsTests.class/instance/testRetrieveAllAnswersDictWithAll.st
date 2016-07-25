testing
testRetrieveAllAnswersDictWithAll
	"test that this method answers a Products dict containing all products"

	| products prod |
	products := Products new.
	products add: (Product newWithKey: 'A');
	 add: (Product newWithKey: 'B');
	 add: (Product newWithKey: 'C').
	self assert: [ products retrieveAll size = 3 ] description: 'method should have answered a Products dict containing all products'