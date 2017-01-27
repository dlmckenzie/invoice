testing - interface
testBuildSuccessMsg_interface
	"test method interface"

	self
		assert: [ DeleteCust new respondsTo: #buildSuccessMsg ]
		description: 'DeleteCust buildSuccessMsg method does not exist'.
	self
		assert: [ (DeleteCust newWithID: 1) buildSuccessMsg isMemberOf: DeleteCust ]
		description: 'DeleteCust buildSuccessMsg method answer self'