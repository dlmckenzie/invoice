testing - interface
testBuildFailureMsg_interface
	"test method interface"

	self
		assert: [ (AddProdWithKey newWithKey: '') respondsTo: #buildFailureMsg ]
		description: 'AddProdWithKey buildFailureMsg not found'.
	self
		assert: [ (AddProdWithKey newWithKey: '') buildFailureMsg isMemberOf: AddProdWithKey ]
		description: 'AddProdWithKey buildFailureMsg did not answer self'