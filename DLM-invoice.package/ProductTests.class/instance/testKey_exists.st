testing - interface
testKey_exists
	"method Product key exists"

	self
		assert: [ Product new respondsTo: #key ]
		description: 'product method key does not exist'