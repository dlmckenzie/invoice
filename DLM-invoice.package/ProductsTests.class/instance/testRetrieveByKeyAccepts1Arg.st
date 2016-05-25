testing
testRetrieveByKeyAccepts1Arg
	"test method accepts 1 argument and answers dictionary"

	self
		assert: [ (Products >> #retrieveByKey:) argumentNames size = 1 ]
		description: 'method defined with incorrect number of parameters'