testing - interface
testExecuteCmd_interface
	"test method exists"

	self
		assert: [ UpdateCustWithFirst new respondsTo: #executeCmd ]
		description: 'method UpdateCustWithFirst executeCmd does not exist'.
		
	self
		assert: [ UpdateCustWithFirst new  isMemberOf: UpdateCustWithFirst ]
		description: 'UpdateCustWithFirst did not answer with self'