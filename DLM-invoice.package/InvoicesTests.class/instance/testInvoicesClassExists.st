testing
testInvoicesClassExists
	"test if class exists

	self
		assert: [ Smalltalk hasClassNamed: #Invoices ]
		description: 'Invoices class does not exist' "