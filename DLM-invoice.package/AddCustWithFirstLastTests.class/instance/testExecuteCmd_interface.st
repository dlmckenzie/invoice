testing - interface
testExecuteCmd_interface
	"test method exists"

	self
		assert: [ AddCustWithFirstLast new respondsTo: #executeCmd ]
		description: 'method AddCustWithFirstLast executeCmd does not exist'.
	self
		assert: [ AddCustWithFirstLast new isMemberOf: AddCustWithFirstLast  ]
		description: 'method AddCustWithFirstLast executeCmd does not answer self'