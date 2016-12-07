testing - interface
testValidate_interface
	"test interface"

	self
		assert: [ AddProdWithKeyDescPrice new respondsTo: #validate ]
		description: 'AddProdWithKeyDescPrice validate method does not exist'.
	self
		assert: [ (AddProdWithKeyDescPrice newWithKey: 'A10' Desc: 'Part A10' Price: 40) validate isMemberOf: AddProdWithKeyDescPrice  ]
		description: 'method did not answer self'