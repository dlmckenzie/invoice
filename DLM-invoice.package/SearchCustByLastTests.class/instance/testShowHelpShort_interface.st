testing - interface
testShowHelpShort_interface
	"test method interface"

	self
		assert: [ SearchCustByLast  respondsTo: #showHelpShort ]
		description: 'SearchCustByLast showHelpShort method does not exist'.
	self
		assert: [ (SearchCustByLast  showHelpShort) isMemberOf: SearchCustByLast class ]
		description: 'method did not answer with an SearchCustByLast command'