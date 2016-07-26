testing
testAddWithKeyExists
	"test that method exists"

	self
		assert: [ Products new respondsTo: #addProd: ]
		description: 'method Products addWithKey: does not exist'