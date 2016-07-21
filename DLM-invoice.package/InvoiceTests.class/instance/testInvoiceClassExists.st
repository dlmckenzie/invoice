testing
testInvoiceClassExists
	"test if class exists"

	self
		assert: [ Smalltalk hasClassNamed: #Invoice ]
		description: 'Invoice class does not exist'