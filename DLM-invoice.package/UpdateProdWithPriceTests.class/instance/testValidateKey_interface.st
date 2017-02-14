testing - interface
testValidateKey_interface
	"test method interface"

	self
		assert: [ UpdateProdWithPrice new respondsTo: #validateKey ]
		description: 'UpdateProdWithPrice validateKey does not exist'.
	self
		assert: [ UpdateProdWithPrice new validateKey isMemberOf: UpdateProdWithPrice ]
		description: 'UpdateProdWithPrice validateKey does not answer self'