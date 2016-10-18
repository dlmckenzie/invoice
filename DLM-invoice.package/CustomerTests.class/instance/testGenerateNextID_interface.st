testing - interface
testGenerateNextID_interface
	"test class method generateNextID interface"

	self
		assert: [ Customer respondsTo: #generateNextID ]
		description: 'Customer generateNextID method does not exist'.
	self
		assert: [ (Customer generateNextID ) isKindOf: Integer ]
		description: 'method did not answer with an integer'