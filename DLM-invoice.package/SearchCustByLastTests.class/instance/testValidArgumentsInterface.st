testing - interface
testValidArgumentsInterface
	"comment"

	| cmd |
	cmd := SearchCustByLast newWithLast: 'Smith'.
	self
		assert: [ cmd respondsTo: #isValid ]
		description: 'SearchCustByNew validArguments does not exist'.
	self
		assert: [ cmd isValid isKindOf: Boolean]
		description: 'SearchCustByNew should have answered with a boolean'