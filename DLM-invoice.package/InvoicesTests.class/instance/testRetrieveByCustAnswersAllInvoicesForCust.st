testing
testRetrieveByCustAnswersAllInvoicesForCust
	"test that method answers correctly"

	| cust invoice invoices cust2 |
	cust := Customer newWithFirst: 'Jody' Last: 'Jetson'.
	cust2 := Customer newWithFirst: 'Jill' Last: 'Jetson'.
	invoices := Invoices new.
	invoice := Invoice newWithCust: cust.
	invoices addInvoice: invoice.
	self
		assert: [ (invoices retrieveByCust: cust) size = 1 ]
		description: 'should have retrieved one invoice'