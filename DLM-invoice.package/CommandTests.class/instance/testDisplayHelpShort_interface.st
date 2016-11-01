testing - interface
testDisplayHelpShort_interface
	"test method interface"

	self
		assert: [ Command respondsTo: #displayHelpShort: ]
		description: 'displayHelpShort:: method does not exist'.
	self
		assert: [ (Command displayHelpShort: 'x') isMemberOf: Command class]
		description: 'method did not answer with self (Command)'