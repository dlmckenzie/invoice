testing - help
testDisplayHelp_interface
	"test method interface"
	
	self
		assert: [ CLI new respondsTo: #displayHelp: ]
		description: 'cli displayHelp: method does not exist'. 
	self
		assert: [ (CLI new displayHelp: (String new writeStream)) isMemberOf: CLI ]
		description: 'CLI displayHelp does not answer self'
	