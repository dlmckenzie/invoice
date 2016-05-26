testing
testRetrieveByKeyAnswersProductOnKeyMatch
	"method should answer with product when key matches"

	| products prod |
	prod := 'B'.
	products := Products new addWithKey: 'A'.
	products addWithKey: prod.
	products addWithKey: 'C'.
	self
		assert: [ (products retrieveByKey: prod) key = prod ]
		description: 'method should have answerered with cooresponding product'