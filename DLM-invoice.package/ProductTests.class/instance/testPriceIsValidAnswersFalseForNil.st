testing
testPriceIsValidAnswersFalseForNil
	"happy path"

	self deny: [ Product new priceIsValid: nil ] description: 'Method should have answered false for nil'