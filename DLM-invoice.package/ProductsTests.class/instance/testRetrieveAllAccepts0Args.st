testing
testRetrieveAllAccepts0Args
	"test method accepts 0 arguments"

	self
		assert: [ (Products >> #retrieveAll) argumentNames size = 0 ]
		description: 'method defined with incorrect number of parameters'