testing - interface
testShowHelpFull_interface
	"test method interface"

	self
		assert: [ UpdateCustWithFirst  respondsTo: #showHelpFull ]
		description: 'UpdateCustWithFirst showHelpFull method does not exist'.
	self
		assert: [ (UpdateCustWithFirst showHelpFull ) isMemberOf: UpdateCustWithFirst class ]
		description: 'method did not answer with an UpdateCustWithFirst command'