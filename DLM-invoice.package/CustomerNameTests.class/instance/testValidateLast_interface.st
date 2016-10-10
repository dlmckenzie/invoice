testing - interface
testValidateLast_interface
	"test method interface"

	self
		assert: [ CustomerName new respondsTo: #validateLast ]
		description: 'CustomerName validateLast method does not exist'.
	self
		assert: [ CustomerName new validateLast isMemberOf: CustomerName ]
		description: 'method did not answer with a CustomerName'