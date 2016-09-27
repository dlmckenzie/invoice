testing
testValidArgumentsInterface
	"comment"

	| cmd |
	cmd := SearchCustByLast newWithLast: 'Smith'.
	self
		assert: [ cmd respondsTo: #validArguments ]
		description: 'SearchCustByNew validArguments does not exist'.
	self
		assert: [ cmd validArguments isKindOf: Boolean]
		description: 'SearchCustByNew should have answered with a boolean'