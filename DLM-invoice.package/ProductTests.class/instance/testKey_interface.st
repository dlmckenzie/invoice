testing - interface
testKey_interface
	"method Product key exists"

	self assert: [ (Product newWithKey: 'A') respondsTo: #key ] description: 'product method key does not exist'.
	self
		assert: [ (Product newWithKey: 'A') key isKindOf: String ]
		description: 'Product key did not answer string'