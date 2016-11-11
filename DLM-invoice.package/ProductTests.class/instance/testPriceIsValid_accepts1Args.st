testing - interface
testPriceIsValid_accepts1Args
	"test method accepts one argument"

	self
		assert: [ (Product class >> #priceIsValid:) argumentNames size = 1 ]
		description: 'method defined with incorrect number of parameters'