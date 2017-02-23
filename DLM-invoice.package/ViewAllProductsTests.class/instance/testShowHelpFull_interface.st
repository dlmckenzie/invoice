testing - interface
testShowHelpFull_interface
	"test method interface"

	self
		assert: [ ViewAllProducts respondsTo: #showHelpFull ]
		description: 'ViewAllProducts showHelpFull method does not exist'.
	self
		assert: [ ViewAllProducts showHelpFull isMemberOf: ViewAllProducts class ]
		description: 'method did not answer with self'