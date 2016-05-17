testing
testLastWithNullRaisesError
	"test that error is raised when last name updated to nil"

	| customer |
	customer := Customer newWithFirst: 'Joe' Last: 'Smith'.
	self should: [ customer last: nil] raise: Error.

