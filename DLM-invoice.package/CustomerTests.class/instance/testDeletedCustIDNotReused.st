testing
testDeletedCustIDNotReused
	"test that deleted cust ids do not get reused"

	| customers invoices cust id |
	invoices := Invoices new.
	customers := Customers new.
	cust := Customer newWithFirst: 'Tom' Last: 'Reynolds'.
	customers addCust: cust.
	id := cust id.
	customers delete: cust.
	cust := Customer newWithFirst: 'Mindy' Last: 'Jones'.
	customers addCust: cust.
	self
		deny: [ customers includes: id ]
		description: 'deleted cust id was reused for a new cust'