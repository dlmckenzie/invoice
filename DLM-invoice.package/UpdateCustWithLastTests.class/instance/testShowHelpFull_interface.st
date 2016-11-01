testing - interface
testShowHelpFull_interface
	"test method interface"

	self
		assert: [ UpdateCustWithLast  respondsTo: #showHelpFull ]
		description: 'UpdateCustWithLast showHelpFull method does not exist'.
	self
		assert: [ (UpdateCustWithLast showHelpFull ) isMemberOf: UpdateCustWithLast class ]
		description: 'method did not answer with an UpdateCustWithLast command'