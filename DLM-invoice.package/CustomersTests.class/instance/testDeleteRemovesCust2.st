testing
testDeleteRemovesCust2
	"test that delete removes customer from dictionary"

	| app cust |
	app := App new.
	app start.
	cust := (Customer newWithName: (CustomerName newWithFirst: 'Lisa' Last: 'Smith')).
	app domain customers addCust: cust.
	app domain customers delete: cust.
	self deny: [ app domain customers includesKey: cust id ] description: 'cust not removed from customers'