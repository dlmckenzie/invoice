testing - interface
testValidateKey_interface
	"test interface"

	self
		assert: [ (DeleteProd newWithKey: 'A') respondsTo: #validateKey ]
		description: 'DeleteProd does not respond to validateKey'.
	self
		assert: [ (DeleteProd newWithKey: 'B') validateKey isMemberOf: DeleteProd ]
		description: 'DeleteProd validateKey did not answer self'