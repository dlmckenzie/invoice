testing - interface
testDeleteProd_exists
	"test that class exists"
	
		self
		assert: (Smalltalk
		hasClassNamed: #DeleteProd)
		description: 'DeleteProd class does not exist'
	
	