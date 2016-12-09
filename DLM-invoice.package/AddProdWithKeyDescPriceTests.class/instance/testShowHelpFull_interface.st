testing - interface
testShowHelpFull_interface
	"test method interface"
	
	self
		assert: [ AddProdWithKeyDescPrice  respondsTo: #showHelpFull ]
		description: 'AddProdWithKeyDescPrice showHelpFull does not exist'.
	self
		assert: [ (AddProdWithKeyDescPrice showHelpFull ) isMemberOf: AddProdWithKeyDescPrice class  ]
		description: 'AddProdWithKeyDescPrice showHelpFull should have answered self'