testing - interface
testShowHelpFull_interface
	"test method interface"

	self
		assert: [ SearchCustByLast  respondsTo: #showHelpFull ]
		description: 'SearchCustByLast showHelpFull method does not exist'.
	self
		assert: [ (SearchCustByLast showHelpFull) isMemberOf: SearchCustByLast class ]
		description: 'method did not answer with an SearchCustByLast command'