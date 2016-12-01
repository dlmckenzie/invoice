testing - help
testHelpProd_interface
	"test method interface"
	
	self
		assert: [ CLI new respondsTo: #helpProd ]
		description: 'cli helpProd method does not exist'. 
	self
		assert: [ (CLI new helpProd) isMemberOf: CLI ]
		description: 'cli helpProd does not answer self'
	