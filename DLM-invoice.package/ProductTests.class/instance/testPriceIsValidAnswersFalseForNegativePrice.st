testing
testPriceIsValidAnswersFalseForNegativePrice
	"happy path"

	self
		deny: [ Product priceIsValid: -12.50 ]
		description: 'Method should have answered false for negative price'