testing
testNewInterface
	"test method's interface"

	self
		assert: [ ViewAllCustomers respondsTo: #new ]
		description: 'ViewAllCustomers new method does not exist'.
		 self
		assert: [ ViewAllCustomers new isMemberOf: ViewAllCustomers ]
		description: 'method did not answer with a ViewAllCustomers command object'