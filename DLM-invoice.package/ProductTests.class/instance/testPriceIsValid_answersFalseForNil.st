testing - edge cases
testPriceIsValid_answersFalseForNil
	"happy path"

	self
		deny: [ Product priceIsValid: nil ]
		description: 'Method should have answered false for nil'