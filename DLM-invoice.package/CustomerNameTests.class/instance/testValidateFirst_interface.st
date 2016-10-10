testing - interface
testValidateFirst_interface
	"test method interface"

	self
		assert: [ CustomerName new respondsTo: #validateFirst ]
		description: 'CustomerName validateFirst method does not exist'.
	self
		assert: [ CustomerName new validateFirst isMemberOf: CustomerName ]
		description: 'method did not answer with a CustomerName'