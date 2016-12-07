testing - interface
testInitializeWithKeyDescPrice_interface
	"test method interface"

	self
		assert: [ AddProdWithKeyDescPrice new respondsTo: #initializeWithKey:Desc:Price: ]
		description: 'AddProdWithKeyDescPrice initializeWithKey:Desc:Price method does not exist'
	"self
		assert: [ (AddProdWithKeyDescPrice new initializeWithKey: 'A' Desc: 'Part A' Price: 4)
				isMemberOf: AddProdWithKeyDescPrice ]
		description: 'method did not answer with an AddProdWithKeyDescPrice command'"