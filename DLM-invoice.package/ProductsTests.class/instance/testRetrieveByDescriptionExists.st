testing
testRetrieveByDescriptionExists
	"test method exists"

	self
		assert: [ Products new respondsTo: #retrieveByDescription: ]
		description: 'method does not exist'