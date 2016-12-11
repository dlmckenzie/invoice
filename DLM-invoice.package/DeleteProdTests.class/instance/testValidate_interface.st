testing - interface
testValidate_interface
	"test interface"

	self
		assert: [ (DeleteProd newWithKey: 'A') respondsTo: #validate ]
		description: 'DeleteProdTests does not respond to validate'.
	self
		assert: [ (DeleteProd newWithKey: 'A') validate isMemberOf: DeleteProd ]
		description: 'DeleteProd validate did not answer self'