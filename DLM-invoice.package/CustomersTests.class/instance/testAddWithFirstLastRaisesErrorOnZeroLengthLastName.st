testing
testAddWithFirstLastRaisesErrorOnZeroLengthLastName
	"last name is required, test that it is not an empty string"

	self should: [ Customers new addWithFirst: 'Joe' Last: '' ] raise: Error