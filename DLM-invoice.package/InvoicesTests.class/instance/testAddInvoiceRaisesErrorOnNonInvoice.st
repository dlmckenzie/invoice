testing
testAddInvoiceRaisesErrorOnNonInvoice
	"Error raised if selector to add is not Invoice"

	self
		should: [ Invoices new addInvoice: Customer new ]
		raise: Error
		description: 'Error should have been raised for non-invoice selector'