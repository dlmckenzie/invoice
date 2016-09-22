testing
testDeleteRemovesCust2
	"test that delete removes customer from dictionary"

	| app cust |
	app := App new.
	app start.
	cust := Customer newWithFirst: 'Julie' Last: 'Andrews'.
	app customers addCust: cust.
	app customers delete: cust.
	self deny: [ app customers includesKey: cust id ] description: 'cust not removed from customers'