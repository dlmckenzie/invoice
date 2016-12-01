testing - interface
testValidate_interface
	"test interface"

	self
		assert: [ AddProdWithKey new respondsTo: #validate ]
		description: 'AddProdWithKey validate method does not exist'.
	self
		assert: [ (AddProdWithKey newWithKey: 'A10') validate isMemberOf: AddProdWithKey ]
		description: 'method did not answer self'