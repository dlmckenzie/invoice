testing
testDeleteRemovesCust
	"test taht delete removes customer from dictionary"

	| customers id | 
	customers := Customers new.
	id := customers addWithFirst: 'Julie' Last: 'Andrews'.
	customers delete: id.
	self deny: [ customers includesKey: id] description: 'cust not removed from customers'
