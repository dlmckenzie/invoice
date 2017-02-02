testing
testKeyIsUniqueExists
	"test that method keyIsUnique exists"

	self
		assert: [ Products new respondsTo: #prodExistsForKey: ]
		description: 'method Products keyIsUnique: does not exist'