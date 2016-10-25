testing - interface
testExecuteCmd_interface
	"test method exists"

	self
		assert: [ UpdateCustWithLast new respondsTo: #executeCmd ]
		description: 'method UpdateCustWithLast executeCmd does not exist'.
	self
		assert: [ UpdateCustWithLast new isMemberOf: UpdateCustWithLast ]
		description: 'UpdateCustWithLast did not answer with self'