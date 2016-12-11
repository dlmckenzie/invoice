testing - interface
testShowHelpFull_interface
	"test method interface"

	self
		assert: [ DeleteProd respondsTo: #showHelpFull ]
		description: 'DeleteProd showHelpFull does not exist'.
	self
		assert: [ DeleteProd showHelpFull isMemberOf: DeleteProd class ]
		description: 'DeleteProd showHelpFull should have answered self'