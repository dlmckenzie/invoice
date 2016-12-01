testing - interface
testShowHelpShort_interface
	"test method interface"
	
	self
		assert: [ AddProdWithKey respondsTo: #showHelpShort ]
		description: 'AddProdWithKey showHelpShort does not exist'.
	self
		assert: [ (AddProdWithKey showHelpShort ) isMemberOf: AddProdWithKey class  ]
		description: 'AddProdWithKey showHelpShort should have answered self'