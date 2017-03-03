testing - interface
testShowHelpFull_interface
	"test method interface"

	self
		assert: [ ViewProd respondsTo: #showHelpFull ]
		description: 'ViewProd showHelpFull method does not exist'.
	self
		assert: [ (ViewProd showHelpFull ) isMemberOf: ViewProd class ]
		description: 'method did not answer with an ViewProd command'