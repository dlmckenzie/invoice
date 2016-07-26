testing
testAddInvoiceInterface
	"validate method interface"

	self
		assert: [ Invoices new respondsTo: #addInvoice: ]
		description: 'class method addInvoice does not exist'.
	self
		assert: [ (Invoices new addInvoice: Invoice new) isMemberOf: Invoice ]
		description: 'method did not answer with self'