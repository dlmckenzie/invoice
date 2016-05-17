testing
testAddWithFirstLastRaisesErrorOnZeroLengthLastName
"last name is required, test that it is not an empty string"

	| customers |
	customers := Customers new.
	self should: [ customers addWithFirst: 'Joe' Last: ''. ] raise: Error.