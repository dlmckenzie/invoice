testing
testDeletedCustIDNotReused
	"test that deleted cust ids do not get reused"

	| customers cust id |
	customers := Customers new.
	cust := Customer newWithFirst: 'Tom' Last: 'Reynolds'.
	customers addCust: cust.
	id := cust id.
	customers delete: id.
	cust := Customer newWithFirst: 'Mindy' Last: 'Jones'.
	customers addCust: cust.
	self deny: [ customers includes: id ] description: 'deleted cust id was reused for a new cust'