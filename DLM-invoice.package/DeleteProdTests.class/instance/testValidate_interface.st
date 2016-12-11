testing - interface
testValidate_interface
	"test interface"

	self
		assert: [ DeleteProd new respondsTo: #validate ]
		description: 'DeleteProdTests does not respond to validate'.
	self
		assert: [ DeleteProd new validate isMemberOf: DeleteProd ]
		description: 'DeleteProd validate did not answer self' 