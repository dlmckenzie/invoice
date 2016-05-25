testing
testPriceIsValidAccepts1Args
	"test method accepts one argument"

	self
		assert: [ (Product >> #priceIsValid:) argumentNames size = 1 ]
		description: 'method defined with incorrect number of parameters'