testing
testRetrieveByKeyAnswersNilOnNoMatch
	"method should answer with product when key matches"

	| products |
	products := Products new addWithKey: 'A'.
	products addWithKey: 'B'.
	self assert: [ (products retrieveByKey: 'C') isNil ] description: 'method should have answerered with nil'