testing
testPriceIsValidAnswersTrueForPositveFloat
	"happy path"

	self assert: [ Product new priceIsValid: 12.50 ] description: 'Method should have answered true'