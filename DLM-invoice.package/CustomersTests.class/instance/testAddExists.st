testing
testAddExists
	"test that method addFirstLast exists"

	| customers |
	customers := Customers new.
	self
		assert: [ customers respondsTo: #addCust: ]
		description: 'customers add: does not exist'