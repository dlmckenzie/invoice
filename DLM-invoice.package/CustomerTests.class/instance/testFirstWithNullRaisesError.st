testing
testFirstWithNullRaisesError
	"test  first name is rejected when updated to nil"

	| customer |
	customer := Customer newWithFirst: 'Joe' Last: 'Smith'.
	self should: [ customer first: nil] raise: Error.

