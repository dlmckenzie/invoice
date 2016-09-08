testing
testDisplayResultInterface
	"test method interface"

	self
		assert: [ (Command >> #displayResult) argumentNames isEmpty ]
		description: 'method defined with incorrect number of parameters'