testing - interface
testShowHelpShort_interface
	"test method interface"

	self
		assert: [ ViewProd respondsTo: #showHelpShort ]
		description: 'ViewProd showHelpShort method does not exist'.
	self
		assert: [ (ViewProd showHelpShort) isMemberOf: ViewProd class ]
		description: 'method did not answer with an ViewProd command'