testing - interface
testValidateDesc_interface
	"test interface"

	self
		assert: [ AddProdWithKeyDescPrice new respondsTo: #validateDesc ]
		description: 'AddProdWithKeyDescPrice validateDesc method does not exist'.
	self
		assert: [ (AddProdWithKeyDescPrice newWithKey: 'A10' Desc: 'Part A10' Price: 40) validateDesc isMemberOf: AddProdWithKeyDescPrice  ]
		description: 'method did not answer self'