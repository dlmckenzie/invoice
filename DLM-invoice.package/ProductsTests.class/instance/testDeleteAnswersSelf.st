testing
testDeleteAnswersSelf
	"test that this method answers self"

	| products key|
	key := 'X101'.
	products := Products new addWithKey: key.
	self assert: [ (products delete: key) isKindOf: Products ] description: 'method did not answer self'