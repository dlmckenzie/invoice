testing - interface
testValidate_interface
	"test method interface"

	self
		assert: [ CustomerName new respondsTo: #validate ]
		description: 'CustomerName validate method does not exist'.
	self
		assert: [ (CustomerName new validate) isMemberOf: CustomerName ]
		description: 'method did not answer with a CustomerName'