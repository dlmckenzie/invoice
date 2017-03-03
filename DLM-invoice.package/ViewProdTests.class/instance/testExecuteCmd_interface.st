testing - interface
testExecuteCmd_interface
	"test method interface"

	self
		assert: [ ViewProd new respondsTo: #executeCmd ]
		description: 'Viewprod executeCmd method does not exist'.
	self
		assert: [ (ViewProd newWithKey: 'A') executeCmd isMemberOf: ViewProd ]
		description: 'method did not answer self'