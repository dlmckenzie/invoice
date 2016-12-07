testing - interface
testAddProdWithKeyDescPrice_exists
	"test if class exists"

	self
		assert: (Smalltalk hasClassNamed: #AddProdWithKeyDescPrice)
		description: 'AddProdWithKeyDescPrice class does not exist'