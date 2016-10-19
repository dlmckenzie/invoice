testing
testDeleteRemovesCust
	"test that delete removes customer from dictionary"

	| customers cust |
	customers := Customers new.
	cust := (Customer newWithName: (CustomerName newWithFirst: 'Lisa' Last: 'Smith')).
	customers addCust: cust.
	customers delete: cust.
	self deny: [ customers includesKey: cust id ] description: 'cust not removed from customers'