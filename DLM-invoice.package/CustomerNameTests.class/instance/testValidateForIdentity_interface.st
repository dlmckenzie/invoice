testing - interface
testValidateForIdentity_interface
	"test method interface"

	self
		assert: [ CustomerName new respondsTo: #validateForIdentity ]
		description: 'CustomerName testValidateForIdentity method does not exist'.
	self
		assert: [ CustomerName new validateForIdentity isMemberOf: CustomerName ]
		description: 'method did not answer with a CustomerName'