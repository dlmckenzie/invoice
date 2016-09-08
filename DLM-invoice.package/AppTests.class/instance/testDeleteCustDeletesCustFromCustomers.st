testing - customer
testDeleteCustDeletesCustFromCustomers
	"test happy path - method removes customer from customers"

	| app cust |
	app := App new.
	app start.
	cust := Customer newWithFirst: 'Joe' Last: 'Smith'.
	app customers addCust: cust.
	self assert: [ app customers size = 1 ] description: 'customer not added'.
	app deleteCust: cust id.
	self assert: [ app customers isEmpty ] description: 'customer not removed'