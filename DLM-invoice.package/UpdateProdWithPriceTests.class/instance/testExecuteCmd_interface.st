testing - interface
testExecuteCmd_interface
	"test method interfae"

	self
		assert: [ UpdateProdWithPrice new respondsTo: #executeCmd ]
		description: 'UpdateProdWithPrice executeCmd does not exist'.
	self
		assert: [ (UpdateProdWithPrice newWithKey: 'A' Price: 10) executeCmd isMemberOf: UpdateProdWithPrice ]
		description: 'UpdateProdWithPrice executeCmd does not answer self'