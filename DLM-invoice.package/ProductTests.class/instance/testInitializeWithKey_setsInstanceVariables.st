testing - interface
testInitializeWithKey_setsInstanceVariables
	"method Product initializeWithKey exists"

	self
		assert: [ (Product newWithKey: 'A') respondsTo: #initializeWithKey: ]
		description: 'product method initializeWithKey: does not exist'.
