testing - help
testHelpIntro_interface
	"test method interface"
	
	self
		assert: [ CLI new respondsTo: #helpIntro ]
		description: 'cli helpIntro method does not exist'. 
	self
		assert: [ (CLI new helpIntro) isMemberOf: CLI ]
		description: 'cli helpIntro does not answer self'
	