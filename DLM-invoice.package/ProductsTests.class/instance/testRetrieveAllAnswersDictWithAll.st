testing
testRetrieveAllAnswersDictWithAll
	"test that this method answers a Products dict containing all products"

	| products prod |
	products := Products new.
	products addProd: (Product newWithKey: 'A');
	 addProd: (Product newWithKey: 'B');
	 addProd: (Product newWithKey: 'C').
	self assert: [ products retrieveAll size = 3 ] description: 'method should have answered a Products dict containing all products'