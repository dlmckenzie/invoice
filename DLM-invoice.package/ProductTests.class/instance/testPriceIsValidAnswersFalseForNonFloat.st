testing
testPriceIsValidAnswersFalseForNonFloat
	"happy path"

	self
		deny: [ Product priceIsValid: 'zero' ]
		description: 'Method should have answered false for non float'