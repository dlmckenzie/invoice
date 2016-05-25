testing
testUpdatePriceAccepts1Arg
	"test method accepts one argument"

	self
		assert: [ (Product >> #updatePrice:) argumentNames size = 1 ]
		description: 'method defined with incorrect number of parameters'