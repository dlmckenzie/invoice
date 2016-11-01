testing - interface
testShowHelpShort_interface
	"test method interface"

	self
		assert: [ ViewCust respondsTo: #showHelpShort ]
		description: 'ViewCust showHelpShort method does not exist'.
	self
		assert: [ (ViewCust showHelpShort) isMemberOf: ViewCust class ]
		description: 'method did not answer with an ViewCust command'