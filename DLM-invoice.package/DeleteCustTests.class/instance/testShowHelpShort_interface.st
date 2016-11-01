testing - interface
testShowHelpShort_interface
	"test method interface"

	self
		assert: [ DeleteCust respondsTo: #showHelpShort ]
		description: 'DeleteCust showHelpShort method does not exist'.
	self
		assert: [ (DeleteCust  showHelpShort) isMemberOf: DeleteCust class ]
		description: 'method did not answer with an DeleteCust command'