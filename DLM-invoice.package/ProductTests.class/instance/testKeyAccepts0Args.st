testing
testKeyAccepts0Args
	"method Product key accepts zero arguments"

	self
		assert: [ (Product >> #key) argumentNames size = 0 ]
		description: 'method defined with incorrect number of parameters'