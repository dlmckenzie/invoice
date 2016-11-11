testing - edge cases
testPriceIsValid_answersTrueForZero
	"happy path"

	self
		assert: [ Product priceIsValid: 0 ]
		description: 'Method should have answered true for price of zero'