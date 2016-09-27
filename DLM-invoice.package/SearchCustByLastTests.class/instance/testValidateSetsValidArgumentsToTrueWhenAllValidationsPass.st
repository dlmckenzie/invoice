testing
testValidateSetsValidArgumentsToTrueWhenAllValidationsPass
	"ValidArguments should be set to true when all validations pass"

	| cmd |
	cmd := SearchCustByLast newWithLast: 'Smith'.
	cmd validate.
	self
		assert: [ cmd validArguments ]
		description: 'validArguments should be set to true when all validations pass'