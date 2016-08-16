interface - customer
addCustWithFirst: aString Last: aString2
	"add customer with first and last name"

	| cust |
	cust := Customer newWithFirst: aString Last: aString2.
	cust accessInvoices: invoices.
	^ customers addCust: cust
	