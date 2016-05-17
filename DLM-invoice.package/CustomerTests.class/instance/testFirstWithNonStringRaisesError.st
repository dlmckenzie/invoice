testing
testFirstWithNonStringRaisesError
	"test that error is raised when first name updated to non-string"

	| customer object |
	object := Object new.
	customer := Customer newWithFirst: 'Joe' Last: 'Smith'.
	self should: [ customer first: object] raise: Error.

