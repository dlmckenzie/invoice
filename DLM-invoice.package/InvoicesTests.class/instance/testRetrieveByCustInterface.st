testing
testRetrieveByCustInterface
	"test interface"

	self assert: [ Invoices new respondsTo: #retrieveByCust: ] description: 'class method retrieveByCust does not exist'.
	self
		assert: [ (Invoices new retrieveByCust: (Customer newWithName: (CustomerName newWithFirst: 'Joe' Last: 'Hanson'))) isMemberOf: Invoices ]
		description: 'method did not answer with self'