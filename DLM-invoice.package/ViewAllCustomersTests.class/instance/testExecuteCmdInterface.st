testing - interface
testExecuteCmdInterface
	"test method exists"

	self
		assert: [ ViewAllCustomers new respondsTo: #executeCmd ]
		description: 'method ViewAllCustomers executeCmd does not exist'