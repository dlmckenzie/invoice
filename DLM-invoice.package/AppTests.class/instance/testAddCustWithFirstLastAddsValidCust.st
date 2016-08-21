testing - customer
testAddCustWithFirstLastAddsValidCust
	"test happy path - method adds customer to customers"

	| app |
	app := App new.
	app start.
	app addCustWithFirst: 'Joe' Last: 'Smith'.
	self assert: [ app customers size = 1 ] description: 'customer not added'