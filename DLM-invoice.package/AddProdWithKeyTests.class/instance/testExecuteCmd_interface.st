testing - interface
testExecuteCmd_interface
	"test method exists"

	self
		assert: [ AddProdWithKey new respondsTo: #executeCmd ]
		description: 'method AddProdWithKey executeCmd does not exist'.
	self
		assert: [ AddProdWithKey new isMemberOf: AddProdWithKey ]
		description: 'method AddProdWithKey executeCmd does not answer self'