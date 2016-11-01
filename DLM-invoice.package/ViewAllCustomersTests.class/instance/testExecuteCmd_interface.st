testing - interface
testExecuteCmd_interface
	"test method exists"

	self
		assert: [ ViewAllCustomers new respondsTo: #executeCmd ]
		description: 'method ViewAllCustomers executeCmd does not exist'