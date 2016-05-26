testing
testRetrieveAllExists
	"test that method exists"

	self
		assert: [ Products new respondsTo: #retrieveAll ]
		description: 'method Products retrieveAll does not exist'