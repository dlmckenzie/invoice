testing - help
testHelpCust_interface
	"test method interface"
	
	self
		assert: [ CLI new respondsTo: #helpCust ]
		description: 'cli helpCust method does not exist'. 
	self
		assert: [ (CLI new helpCust) isMemberOf: CLI ]
		description: 'cli helpCust does not answer self'
	