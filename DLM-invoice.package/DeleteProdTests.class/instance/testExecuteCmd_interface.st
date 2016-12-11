testing - interface
testExecuteCmd_interface
	"test method interface"

	self
		assert: [ (DeleteProd newWithKey: 'A10') respondsTo: #executeCmd ]
		description: 'DeleteProd executeCmd not found'.
	self
		assert: [ (DeleteProd newWithKey: 'A10') executeCmd isMemberOf: DeleteProd ]
		description:  'DeleteProd executeCmd does not answer self'