testing - help
testHelp2_interface
	"test method interface"
	
	self
		assert: [ CLI new respondsTo: #help: ]
		description: 'cli help: method does not exist'. 
	self
		assert: [ (CLI new help: 'command') isMemberOf: CLI ]
		description: 'cli help" does not answer self'
	