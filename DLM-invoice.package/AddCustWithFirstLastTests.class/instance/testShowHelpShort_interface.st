testing - interface
testShowHelpShort_interface
	"test method interface"

	self
		assert: [ AddCustWithFirstLast respondsTo: #showHelpShort ]
		description: 'AddCustWithFirstLast showHelpShort method does not exist'.
	self
		assert: [ (AddCustWithFirstLast showHelpShort) isMemberOf: AddCustWithFirstLast class ]
		description: 'method did not answer with an AddCustWithFirstLast command'