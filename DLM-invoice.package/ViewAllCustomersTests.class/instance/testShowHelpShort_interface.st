testing - interface
testShowHelpShort_interface
	"test method interface"

	self
		assert: [ ViewAllCustomers respondsTo: #showHelpShort ]
		description: 'ViewAllCustomers showHelpShort method does not exist'.
	self
		assert: [ (ViewAllCustomers showHelpShort) isMemberOf: ViewAllCustomers class ]
		description: 'method did not answer with an ViewAllCustomers command'