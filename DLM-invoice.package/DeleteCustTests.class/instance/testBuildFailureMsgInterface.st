testing
testBuildFailureMsgInterface
	"test method interface"

	self
		assert: [ DeleteCust new respondsTo: #buildFailureMsg ]
		description: 'DeleteCust buildFailureMsg method does not exist'.
