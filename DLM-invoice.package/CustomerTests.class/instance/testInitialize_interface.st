testing
testInitialize_interface
	"method should answer self"

	self
		assert: [ Customer initialize isMemberOf: Customer class ]
		description: 'intialize does not answer with Customer'