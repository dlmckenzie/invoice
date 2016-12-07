testing - interface
testBuildSuccessMsg_interface
	"test method interface"

	self
		assert: [ (AddProdWithKey newWithKey: 'A10') respondsTo: #buildSuccessMsg ]
		description: 'AddProdWithKey buildSuccessMsg not found'.
	self
		assert: [ (AddProdWithKey newWithKey: 'A10') buildSuccessMsg isMemberOf: AddProdWithKey ]
		description: 'AddProdWithKey buildSuccessMsg did not answer self'