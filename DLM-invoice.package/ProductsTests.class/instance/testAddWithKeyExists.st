testing
testAddWithKeyExists
	"test that method exists"

	self
		assert: [ Products new respondsTo: #addWithKey: ]
		description: 'method Products addWithKey: does not exist'