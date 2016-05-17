testing
testDeletedCustIDNotReused
	"test that deleted cust ids do not get reused"

	| customers id |
	
	customers := Customers new.
	id := customers addWithFirst: 'Tom' Last: 'Reynolds'.
	customers delete: id.
	customers addWithFirst: 'Mindy' Last: 'Smith'.
	  
	self deny: [ customers includes: id ] description: 'deleted cust id was reused for a new cust' 