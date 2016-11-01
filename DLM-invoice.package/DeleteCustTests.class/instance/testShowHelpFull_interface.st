testing - interface
testShowHelpFull_interface
	"test method interface"

	self
		assert: [ DeleteCust respondsTo: #showHelpFull ]
		description: 'DeleteCust showHelpFull method does not exist'.
	self
		assert: [ (DeleteCust showHelpFull) isMemberOf: DeleteCust class ]
		description: 'method did not answer with a DeleteCust command'