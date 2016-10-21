testing - interface
testExecuteCmd_interface
	"test method exists"

	self
		assert: [ AddCustWithFirstLast new respondsTo: #executeCmd ]
		description: 'method AddCustWithFirstLast executeCmd does not exist'