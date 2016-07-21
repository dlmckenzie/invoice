testing
testInitializeResetsInvoiceNumber
	"test that invoie number gets reset on class initialization"

	Invoice generateNextNumber.
	Invoice initialize.
	self
		assert: [ Invoice nextNumber isNil  ]
		description: 'Invoice initialization did not reset invoice number'