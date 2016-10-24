testing - happy path
testDeletedCustIDNotReused
	"test that deleted cust ids do not get reused"

	| customers cust id |
	customers := Customers new.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Tom' Last: 'Reynolds').
	id := cust id.
	customers addCust: cust.
	customers delete: cust.
	cust := Customer newWithName: (CustomerName newWithFirst: 'Mindy' Last: 'Jones').
	customers addCust: cust.
	self
		deny: [ customers includes: id ]
		description: 'deleted cust id was reused for a new cust'