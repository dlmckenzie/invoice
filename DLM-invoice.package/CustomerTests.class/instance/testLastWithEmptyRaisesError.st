testing
testLastWithEmptyRaisesError
	"test that error is raised when last name updated to empty string"

	| customer |
	customer := Customer newWithFirst: 'Joe' Last: 'Smith'.
	self should: [ customer last: ''] raise: Error.

