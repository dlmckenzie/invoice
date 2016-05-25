testing
testRetrieveByKeyExists
	"test that method addFirstLast exists"

	self
		assert: [ Products new respondsTo: #retrieveByKey: ]
		description: 'method Products retrieveByKey: does not exist'