testing - interface
testNewWithKeyDescPrice_interface
	"test method interface"

	self
		assert: [ AddProdWithKeyDescPrice respondsTo: #newWithKey:Desc:Price: ]
		description: 'AddProdWithKeyDescPrice newWithKey:Desc:Price method does not exist'.
	self
		assert: [ (AddProdWithKeyDescPrice newWithKey: 'A' Desc: 'Part A' Price: 1.00) isMemberOf: AddProdWithKeyDescPrice ]
		description: 'method did not answer with an AddProdWithKeyDescPrice command'