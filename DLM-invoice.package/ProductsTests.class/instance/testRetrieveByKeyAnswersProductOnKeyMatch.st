testing
testRetrieveByKeyAnswersProductOnKeyMatch
	"method should answer with product when key matches"

	| products a b c|
	products := Products new.
	a := Product newWithKey: 'A'.
	b := Product newWithKey: 'B'.
	c := Product newWithKey: 'C'.
	products addProd: a; addProd: b; addProd: c.
	self assert: [ (products retrieveByKey: 'B') key = 'B' ] description: 'method should have answered with cooresponding product'