testing - interface
testValidateKey_interface
	"test method interface"

	self
		assert: [ UpdateProdWithDesc new respondsTo: #validateKey ]
		description: 'UpdateProdWithDesc validateKey does not exist'.
	self
		assert: [ UpdateProdWithDesc new validateKey isMemberOf: UpdateProdWithDesc ]
		description: 'UpdateProdWithDesc validateKey does not answer self'