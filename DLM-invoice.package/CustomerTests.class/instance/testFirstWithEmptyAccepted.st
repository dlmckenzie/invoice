testing
testFirstWithEmptyAccepted
	"test that empty string is accepted for first name"

	| customer |
	customer := Customer newWithFirst: 'Joe' Last: 'Smith'.
	self shouldnt: [ customer first: ''] raise: Error.

