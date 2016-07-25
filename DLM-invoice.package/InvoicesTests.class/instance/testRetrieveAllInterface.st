testing
testRetrieveAllInterface
	"test that method interface"

	self
		assert: [ Invoices new respondsTo: #retrieveAll ]
		description: 'method Invoices retrieveAll does not exist'.
		
		self
		assert: [ Invoices new retrieveAll isMemberOf: Invoices ]
		description: 'method should have answered anInvoices collection'