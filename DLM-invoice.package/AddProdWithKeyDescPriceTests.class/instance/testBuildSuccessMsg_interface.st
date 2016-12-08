testing - interface
testBuildSuccessMsg_interface
	"test interface"

	self
		assert: [ AddProdWithKeyDescPrice new respondsTo: #buildSuccessMsg ]
		description: 'AddProdWithKeyDescPrice buildSuccessMsg method does not exist'.
	self
		assert: [ (AddProdWithKeyDescPrice newWithKey: 'A10' Desc: 'Part A10' Price: 40) buildSuccessMsg
				isMemberOf: AddProdWithKeyDescPrice ]
		description: 'method did not answer self'