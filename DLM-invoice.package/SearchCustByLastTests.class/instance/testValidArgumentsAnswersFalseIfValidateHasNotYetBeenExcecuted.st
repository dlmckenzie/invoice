testing
testValidArgumentsAnswersFalseIfValidateHasNotYetBeenExcecuted
	"needs comment"

	| cmd |
	cmd := SearchCustByLast
		newWithLast: 'Smith'. self
		deny: [ cmd validArguments ]
		description: 'validArguments should have answered false'