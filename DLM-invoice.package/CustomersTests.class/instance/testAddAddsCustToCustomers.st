testing
testAddAddsCustToCustomers
	"tests that customers addWithFirst:Last: adds one customer to customers"

	| customers |
	customers := Customers new.
	customers addCust: (Customer newWithFirst: 'Lisa' Last: 'Smith').
	self assert: [ customers size = 1 ] description: 'cust not added'