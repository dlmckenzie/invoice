testing - interface
testShowHelpFull_interface
	"test method interface"
	
	self
		assert: [ AddProdWithKey respondsTo: #showHelpFull ]
		description: 'AddProdWithKey showHelpFull does not exist'.
	self
		assert: [ (AddProdWithKey showHelpFull ) isMemberOf: AddProdWithKey class  ]
		description: 'AddProdWithKey showHelpFull should have answered self'