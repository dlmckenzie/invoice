testing - interface
testExecuteCmd_interface
	"test method exists"

	self
		assert: [ (ViewCust newWithID: 100) respondsTo: #executeCmd ]
		description: 'method ViewCust executeCmd does not exist'.
		
	self
		assert: [ (ViewCust newWithID: 100) executeCmd isMemberOf: ViewCust]
		description: 'Viewcust executeCmd should have answered with ViewCust'