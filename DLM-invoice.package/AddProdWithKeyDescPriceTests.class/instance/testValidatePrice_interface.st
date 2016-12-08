testing - interface
testValidatePrice_interface
	"test interface"

	self
		assert: [ AddProdWithKeyDescPrice new respondsTo: #validatePrice ]
		description: 'AddProdWithKeyDescPrice validatePrice method does not exist'.
	self
		assert: [ (AddProdWithKeyDescPrice newWithKey: 'A10' Desc: 'Part A10' Price: 40) validatePrice isMemberOf: AddProdWithKeyDescPrice  ]
		description: 'method did not answer self'