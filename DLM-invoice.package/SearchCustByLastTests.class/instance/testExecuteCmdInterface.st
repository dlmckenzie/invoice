testing - interface
testExecuteCmdInterface
	"test method exists"

	self
		assert: [ SearchCustByLast new respondsTo: #executeCmd ]
		description: 'method SearchCustByLast executeCmd does not exist'