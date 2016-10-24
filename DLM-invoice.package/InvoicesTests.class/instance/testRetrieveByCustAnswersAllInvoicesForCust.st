testing
testRetrieveByCustAnswersAllInvoicesForCust
	"test that method answers correctly"

	| cust invoice invoices |
	cust := Customer newWithName: (CustomerName newWithFirst: 'Jody' Last: 'Jetson').
	Customer newWithName: (CustomerName newWithFirst: 'Jill' Last: 'Jetson').
	invoices := Invoices new.
	invoice := Invoice newWithCust: cust.
	invoices addInvoice: invoice.
	self assert: [ (invoices retrieveByCust: cust) size = 1 ] description: 'should have retrieved one invoice'