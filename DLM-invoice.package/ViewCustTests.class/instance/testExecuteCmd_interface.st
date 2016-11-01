testing - interface
testExecuteCmd_interface
	"test method exists"

	self
		assert: [ ViewCust new respondsTo: #executeCmd ]
		description: 'method ViewCust executeCmd does not exist'.
		
	self
		assert: [ ViewCust new executeCmd isMemberOf: ViewCust]
		description: 'Viewcust executeCmd should have answered with ViewCust'