testing - interface
testShowHelpShort_interface
	"test method interface"

	self
		assert: [ UpdateCustWithFirst  respondsTo: #showHelpShort ]
		description: 'UpdateCustWithFirst showHelpShort method does not exist'.
	self
		assert: [ (UpdateCustWithFirst  showHelpShort) isMemberOf: UpdateCustWithFirst class ]
		description: 'method did not answer with an UpdateCustWithFirst command'