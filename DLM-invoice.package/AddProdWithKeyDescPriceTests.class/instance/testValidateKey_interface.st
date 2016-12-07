testing - interface
testValidateKey_interface
	"test interface"

	self
		assert: [ AddProdWithKeyDescPrice new respondsTo: #validateKey ]
		description: 'AddProdWithKeyDescPrice validatKey method does not exist'.
	self
		assert: [ (AddProdWithKeyDescPrice newWithKey: 'A10' Desc: 'Part A10' Price: 40) validateKey isMemberOf: AddProdWithKeyDescPrice  ]
		description: 'method did not answer self'