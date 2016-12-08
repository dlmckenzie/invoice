testing - interface
testExecuteCmd_interface
	"test method exists"

	self
		assert: [ AddProdWithKeyDescPrice  new respondsTo: #executeCmd ]
		description: 'method AddProdWithKeyDescPrice executeCmd does not exist'.
	self
		assert: [ AddProdWithKeyDescPrice  new isMemberOf: AddProdWithKeyDescPrice  ]
		description: 'method AddProdWithKeyDescPrice executeCmd does not answer self'