testing
testDeleteRemovesCust
	"test taht delete removes customer from dictionary"

	| customers cust id |
	customers := Customers new.
	cust := Customer newWithFirst: 'Julie' Last: 'Andrews'.
	customers addCust: cust.
	id := cust id.
	customers delete: id.
	self deny: [ customers includesKey: id ] description: 'cust not removed from customers'