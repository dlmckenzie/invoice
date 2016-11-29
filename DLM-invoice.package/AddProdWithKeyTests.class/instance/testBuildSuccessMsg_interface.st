testing - interface
testBuildSuccessMsg_interface
	"test method interface"

	self
		assert: [ AddProdWithKey new respondsTo: #buildSuccessMsg ]
		description: 'AddProdWithKey buildSuccessMsg not found'.
	self assert: [ AddProdWithKey new buildSuccessMsg isMemberOf: AddProdWithKey ] description: 'AddProdWithKey buildSuccessMsg did not answer self'