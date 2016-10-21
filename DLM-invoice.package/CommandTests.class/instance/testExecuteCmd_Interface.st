testing - interface
testExecuteCmd_Interface
	"test method interface"

	self
		assert: [ (Command >> #executeCmd) argumentNames isEmpty  ]
		description: 'method defined with incorrect number of parameters'
		
	