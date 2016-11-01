testing - interface
testDisplayHelpFullUsingAnd_interface
	"test method interface"

	self
		assert: [ Command respondsTo: #displayHelpFullUsing:and: ]
		description: 'displayHelpFullUsing:And method does not exist'.
	self
		assert: [ (Command displayHelpFullUsing: 'command syntax' and: 'explanation') isMemberOf: Command class]
		description: 'method did not answer with self (Command)'