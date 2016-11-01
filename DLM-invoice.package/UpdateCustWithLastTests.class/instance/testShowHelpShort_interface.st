testing - interface
testShowHelpShort_interface
	"test method interface"

	self
		assert: [ UpdateCustWithLast  respondsTo: #showHelpShort ]
		description: 'UpdateCustWithLast showHelpShort method does not exist'.
	self
		assert: [ (UpdateCustWithLast showHelpShort) isMemberOf: UpdateCustWithLast class ]
		description: 'method did not answer with an UpdateCustWithLast command'