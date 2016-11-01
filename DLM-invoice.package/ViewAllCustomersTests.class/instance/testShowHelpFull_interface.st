testing - interface
testShowHelpFull_interface
	"test method interface"

	self
		assert: [ ViewAllCustomers respondsTo: #showHelpFull ]
		description: 'ViewAllCustomers showHelpFull method does not exist'.
	self
		assert: [ (ViewAllCustomers showHelpFull ) isMemberOf: ViewAllCustomers class ]
		description: 'method did not answer with an ViewAllCustomers command'