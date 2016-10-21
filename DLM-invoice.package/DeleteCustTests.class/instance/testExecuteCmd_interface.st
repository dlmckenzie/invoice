testing - interface
testExecuteCmd_interface
	"test method exists"

	self
		assert: [ DeleteCust new respondsTo: #executeCmd ]
		description: 'method DeleteCust executeCmd does not exist'