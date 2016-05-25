testing
testKeyIsUniqueAccepts1Arg
	"test method accepts 1 argument"

	self
		assert: [ (Products >> #keyIsUnique:) argumentNames size = 1 ]
		description: 'method defined with incorrect number of parameters'