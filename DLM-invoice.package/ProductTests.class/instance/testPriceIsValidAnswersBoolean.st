testing
testPriceIsValidAnswersBoolean
	"test that method answers Boolean"

	self assert: [ (Product new priceIsValid: 12.50) isKindOf: Boolean ] description: 'Method did not answer with Boolean'