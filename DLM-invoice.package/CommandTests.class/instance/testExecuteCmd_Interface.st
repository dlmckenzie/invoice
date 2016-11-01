testing - interface
testExecuteCmd_interface
	"test method interface"

	self
		assert: [ (Command >> #executeCmd) argumentNames isEmpty  ]
		description: 'method defined with incorrect number of parameters'
		
	