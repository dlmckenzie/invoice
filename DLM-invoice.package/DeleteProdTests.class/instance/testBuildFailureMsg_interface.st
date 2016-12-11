testing - interface
testBuildFailureMsg_interface
	"test interface"

	self
		assert: [ (DeleteProd newWithKey: 'A10') respondsTo: #buildFailureMsg ]
		description: 'DeleteProd buildFailureMsg method does not exist'.
	self
		assert: [ (DeleteProd newWithKey: 'A10') buildFailureMsg isMemberOf: DeleteProd ]
		description: 'method did not answer self'