testing - interface
testShowHelpShort_interface
	"test method interface"

	self
		assert: [ ViewAllProducts respondsTo: #showHelpShort ]
		description: 'ViewAllProducts showHelpShort method does not exist'.
	self
		assert: [ ViewAllProducts showHelpShort isMemberOf: ViewAllProducts class ]
		description: 'method did not answer self'