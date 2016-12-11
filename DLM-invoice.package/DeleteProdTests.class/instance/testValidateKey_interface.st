testing - interface
testValidateKey_interface
	"test interface"

	self
		assert: [ DeleteProd new respondsTo: #validateKey ]
		description: 'DeleteProd does not respond to validateKey'.
	self
		assert: [ DeleteProd new validateKey isMemberOf: DeleteProd ]
		description: 'DeleteProd validateKey did not answer self'