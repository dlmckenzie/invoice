testing - happy path
testValidate_setsValidArgumentsToTrueWhenAllValidationsPass
	"ValidArguments should be set to true when all validations pass"

	| cmd |
	cmd := SearchCustByLast newWithLast: 'Smith'.
	cmd validate.
	self
		assert: [ cmd isValid ]
		description: 'validArguments should be set to true when all validations pass'