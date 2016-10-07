testing
testStart_interface
	"test method accepts 1 argument"

	self
		assert: [ (CLI >> #start:) argumentNames size = 1 ]
		description: 'method defined with incorrect number of parameters'