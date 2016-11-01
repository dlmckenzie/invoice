testing - interface
testShowHelpFull_interface
	"test method interface"

	self
		assert: [ AddCustWithFirstLast respondsTo: #showHelpFull ]
		description: 'AddCustWithFirstLast showHelpFull method does not exist'.
	self
		assert: [ (AddCustWithFirstLast showHelpFull) isMemberOf: AddCustWithFirstLast class ]
		description: 'method did not answer with an AddCustWithFirstLast command'