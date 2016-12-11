testing - interface
testDeleteProd_interface
	"test method interface"

	self
		assert: [ DeleteProd respondsTo: #showHelpShort ]
		description: 'DeleteProd showHelpShort does not exist'.
	self
		assert: [ DeleteProd showHelpShort isMemberOf: DeleteProd class ]
		description: 'DeleteProd showHelpShort should have answered self'