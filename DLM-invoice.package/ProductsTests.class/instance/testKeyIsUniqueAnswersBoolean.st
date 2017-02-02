testing
testKeyIsUniqueAnswersBoolean
	"test that this method answers boolean"

	| products result |
	products := Products new.
	result := products prodExistsForKey: 'X101'.
	self
		assert: [ result isKindOf: Boolean ]
		description: 'method did not answer boolean'