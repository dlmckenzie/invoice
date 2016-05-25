testing
testKeyIsUniqueAnswersFalseForDuplicateKey
	"test that this method answers boolean"

	| products result |
	products := Products new.
	products addWithKey: 'X101'.
	result := products keyIsUnique: 'X101'.
	self
		deny: [ result ]
		description: 'method should have answered true for unique key'