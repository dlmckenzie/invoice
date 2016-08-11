testing
testDeleteRemovesCust
	"test that delete removes customer from dictionary"

	| customers cust |
	customers := Customers new.
	cust := Customer newWithFirst: 'Julie' Last: 'Andrews'.
	cust accessInvoices: Invoices new.
	customers addCust: cust.
	customers delete: cust.
	self
		deny: [ customers includesKey: cust id ]
		description: 'cust not removed from customers'