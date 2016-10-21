testing - edge cases
testValidate_setsValidArgumentsToFalseWhenAnyValidationFails
	"needs comment"

	| cmd |
	cmd := SearchCustByLast newWithLast: ''.
	cmd validate.
	self
		deny: [ cmd validArguments ]
		description: 'validArguments should be set to false when any validation fails'