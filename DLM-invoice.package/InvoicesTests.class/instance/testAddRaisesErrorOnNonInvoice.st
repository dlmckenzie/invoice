testing
testAddRaisesErrorOnNonInvoice
	"Error raised if selector to add is not Invoice"

	self
		should: [ Invoices new add: Customer new ]
		raise: Error
		description: 'Error should have been raised for non-invoice selector'