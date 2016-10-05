testing - interface
testNewWithFirst_interface
	"test interface"

	self
		assert: [ FirstNameParam respondsTo: #newWithFirst: ]
		description: 'class method FirstNameParam newWithFirst: does not exist'.
	self
		assert: [ (FirstNameParam newWithFirst: 'Joe') isMemberOf: FirstNameParam ]
		description: 'method did not answer with instance of self'