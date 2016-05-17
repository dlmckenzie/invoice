testing
testUpdateFirstNameMethodRemoved
	"test that method is removed from class - being moved to Customer class`"

	| customers |
	customers := Customers new.
	self deny: [ customers respondsTo: #updateFirstName: ] 
		description: 'this method should have been removed'