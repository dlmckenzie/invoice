testing - happy path
testPriceIsValid_answersTrueForPositveFloat
	"happy path"

	self
		assert: [ Product priceIsValid: 12.50 ]
		description: 'Method should have answered true'