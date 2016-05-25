testing
testPriceIsValidAnswersFalseForNegativePrice
	"happy path"

	self deny: [ Product new priceIsValid: -12.50 ] description: 'Method should have answered false for negative price'