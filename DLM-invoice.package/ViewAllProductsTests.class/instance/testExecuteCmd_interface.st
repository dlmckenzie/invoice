testing - interface
testExecuteCmd_interface
	"test method interface"

	self
		assert: [ ViewAllProducts new respondsTo: #executeCmd ]
		description: 'ViewAllProducts executeCmd method not found'.
	self
		assert: [ ViewAllProducts new executeCmd isMemberOf: ViewAllProducts ]
		description: 'method should answer self'