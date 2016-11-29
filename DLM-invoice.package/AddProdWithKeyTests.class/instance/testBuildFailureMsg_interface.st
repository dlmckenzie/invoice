testing - interface
testBuildFailureMsg_interface
	"test method interface"

	self
		assert: [ AddProdWithKey new respondsTo: #buildFailureMsg ]
		description: 'AddProdWithKey buildFailureMsg not found'.
	self
		assert: [ AddProdWithKey new buildFailureMsg isMemberOf: AddProdWithKey ]
		description: 'AddProdWithKey buildFailureMsg did not answer self'