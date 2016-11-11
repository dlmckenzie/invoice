testing - interface
testPriceIsValid_answersBoolean
	"test that method answers Boolean"

	self
		assert: [ (Product priceIsValid: 12.50) isKindOf: Boolean ]
		description: 'Method did not answer with Boolean'