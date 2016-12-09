testing - interface
testShowHelpShort_interface
	"test method interface"
	
	self
		assert: [ AddProdWithKeyDescPrice respondsTo: #showHelpShort ]
		description: 'AddProdWithKeyDescPrice showHelpShort does not exist'.
	self
		assert: [ (AddProdWithKeyDescPrice showHelpShort ) isMemberOf: AddProdWithKeyDescPrice class  ]
		description: 'AddProdWithKeyDescPrice showHelpShort should have answered self'