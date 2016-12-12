testing - interface
testUpdateProdWithDesc_exists
	"test that class exists"

	self
		assert: (Smalltalk hasClassNamed: #UpdateProdWithDesc)
		description: 'UpdateProdWithDesc class does not exist'
	