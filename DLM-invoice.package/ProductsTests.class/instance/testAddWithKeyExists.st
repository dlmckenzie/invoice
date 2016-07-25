testing
testAddWithKeyExists
	"test that method exists"

	self
		assert: [ Products new respondsTo: #add: ]
		description: 'method Products addWithKey: does not exist'