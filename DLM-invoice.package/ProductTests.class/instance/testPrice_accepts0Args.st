testing - interface
testPrice_accepts0Args
	"method Product price accepts zero arguments"

	self
		assert: [ (Product >> #price) argumentNames size = 0 ]
		description: 'method defined with incorrect number of parameters'