testing - interface
testExecuteCmdInterface
	"test method exists"

	self
		assert: [ DeleteCust new respondsTo: #executeCmd ]
		description: 'method DeleteCust executeCmd does not exist'