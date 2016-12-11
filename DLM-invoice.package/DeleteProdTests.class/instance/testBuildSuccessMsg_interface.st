testing - interface
testBuildSuccessMsg_interface
	"test interface"

	self
		assert: [ (DeleteProd newWithKey: 'A10') respondsTo: #buildSuccessMsg ]
		description: 'DeleteProd buildSuccessMsg method does not exist'.
	self
		assert: [ (DeleteProd newWithKey: 'A10') buildSuccessMsg isMemberOf: DeleteProd ]
		description: 'method did not answer self'