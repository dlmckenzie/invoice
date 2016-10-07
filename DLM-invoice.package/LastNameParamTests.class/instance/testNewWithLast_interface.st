testing - interface
testNewWithLast_interface
	"test interface"

	self
		assert: [ LastNameParam respondsTo: #newWithLast: ]
		description: 'class method LastNameParam newWithLast: does not exist'.
	self
		assert: [ (LastNameParam newWithLast: 'Smith') isMemberOf: LastNameParam ]
		description: 'method did not answer with instance of self'