testing
testAddWithKeyAnswersSelf
	"test that this method answers with the argument"

	| products result |
	products := Products new.
	result := products addProd: (Product newWithKey: 'A1').
	self assert: [ result isKindOf: Product ] description: 'method did not answer with argument'