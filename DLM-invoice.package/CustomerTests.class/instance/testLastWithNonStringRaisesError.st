testing
testLastWithNonStringRaisesError
	"test that error is raised when last name updated to non-string"

	| customer object |
	object := Object new.
	customer := Customer newWithFirst: 'Joe' Last: 'Smith'.
	self should: [ customer last: object] raise: Error.

