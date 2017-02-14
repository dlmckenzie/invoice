testing - interface
testUpdateProdWithPrice_exists
	"test that class exists"

	self
		assert: (Smalltalk hasClassNamed: #UpdateProdWithPrice)
		description: 'UpdateProdWithPrice class does not exist'