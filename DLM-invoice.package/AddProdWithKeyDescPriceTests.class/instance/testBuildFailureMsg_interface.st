testing - interface
testBuildFailureMsg_interface
	"test interface"

	self
		assert: [ AddProdWithKeyDescPrice new respondsTo: #buildFailureMsg ]
		description: 'AddProdWithKeyDescPrice buildFailureMsg method does not exist'.
	self
		assert: [ (AddProdWithKeyDescPrice newWithKey: 'A10' Desc: 'Part A10' Price: 'unknown') buildFailureMsg
				isMemberOf: AddProdWithKeyDescPrice ]
		description: 'method did not answer self'