testing
testAddWithFirstLastRaisesErrorOnNilLastName
	"last name is required"

	| customers |
	customers := Customers new.
	self should: [ customers addWithFirst: 'Joe' Last: nil. ] raise: Error.