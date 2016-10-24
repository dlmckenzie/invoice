testing
testNewWithCustSuccesfullyCreatesInvoice
	"test invoice is created "

	| invoice |
	Invoice initialize.
	invoice := Invoice newWithCust: (Customer newWithName: (CustomerName newWithFirst: 'Joe' Last: 'Smith')).
	self assert: [ invoice number = 1 ] description: 'invoice number for invoice incorrect'.
	self assert: [ invoice customer name first = 'Joe' ] description: 'customer info for invoice incorrect'