testing - interface
testShowHelpFull_interface
	"test method interface"

	self
		assert: [ ViewCust respondsTo: #showHelpFull ]
		description: 'ViewCust showHelpFull method does not exist'.
	self
		assert: [ (ViewCust showHelpFull ) isMemberOf: ViewCust class ]
		description: 'method did not answer with an ViewCust command'