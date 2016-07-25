testing
testAddInvoiceInterface
	"validate method interface"

	self
		assert: [ Invoices new respondsTo: #add: ]
		description: 'class method addInvoice does not exist'.
	self
		assert: [ (Invoices new add: Invoice new) isMemberOf: Invoice ]
		description: 'method did not answer with self'