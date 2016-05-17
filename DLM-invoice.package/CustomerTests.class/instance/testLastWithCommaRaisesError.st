testing
testLastWithCommaRaisesError
	"test that error is raised when first name updated to nil"

	| customer |
	customer := Customer newWithFirst: 'Joey' Last: 'Smith'.
	self should: [ customer last: 'Smith, Joseph'] raise: Error.

