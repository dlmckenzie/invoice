testing
testKeyIsUniqueAnswersTrueForUniqueKey
	"test that this method answers boolean"

	| products result |
	products := Products new.
	result := products keyIsUnique: 'X101'.
	self
		assert: [ result ]
		description: 'method should have answered true for unique key'