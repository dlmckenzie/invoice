testing - interface
testAddProdWithKey_exists
	"test if class exists"

	self
		assert: (Smalltalk
		hasClassNamed: #AddProdWithKey)
		description: 'AddProdWithKey class does not exist'