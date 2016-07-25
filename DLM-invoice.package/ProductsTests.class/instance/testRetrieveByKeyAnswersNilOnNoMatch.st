testing
testRetrieveByKeyAnswersNilOnNoMatch
	"method should answer with product when key matches"

	| products a b |
	products := Products new.
	a := Product newWithKey: 'A'.
	b := Product newWithKey: 'B'.
	products add: a; add: b.
	self assert: [ (products retrieveByKey: 'C') isNil ] description: 'method should have answerered with nil'