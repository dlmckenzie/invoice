testing - interface
testValidate_interface
	"test interface"
	
	self 
		assert: [ AddProdWithKey new respondsTo: #validate ]
		description: 'AddProdWithKey validate method does not exist'.
	self
		assert: [ AddProdWithKey new validate isMemberOf: AddProdWithKey ]
		description: 'method did not answer self' 