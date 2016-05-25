testing
testPriceIsValidAnswersTrueForZero
	"happy path"

	self assert: [ Product new priceIsValid: 0 ] description: 'Method should have answered true for price of zero'