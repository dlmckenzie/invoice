testing
testKeyIsUniqueAccepts1Arg
	"test method accepts 1 argument"

	self
		assert: [ (Products >> #prodExistsForKey:) argumentNames size = 1 ]
		description: 'method defined with incorrect number of parameters'