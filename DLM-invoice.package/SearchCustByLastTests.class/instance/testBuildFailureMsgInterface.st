testing - interface
testBuildFailureMsgInterface
	"test method interface"

	self
		assert: [ SearchCustByLast new respondsTo: #buildFailureMsg ]
		description: 'SearchCustByLast buildFailureMsg method does not exist'.
	self
		assert: [ (SearchCustByLast newWithLast: 'Smith') buildFailureMsg isMemberOf: SearchCustByLast ]
		description: 'SearchCustByLast buildFailureMsg method did not answer self'