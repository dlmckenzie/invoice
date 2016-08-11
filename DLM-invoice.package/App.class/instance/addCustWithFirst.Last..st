interface - customer
addCustWithFirst: aString Last: aString2
	"add customer with first and last name"

	| cust |
	cust := Customer newWithFirst: aString Last: aString2.
	cust invoiceAccess: invoices.
	^ customers addCust: cust