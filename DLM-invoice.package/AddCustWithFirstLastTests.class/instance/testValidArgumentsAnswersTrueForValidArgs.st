testing
testValidArgumentsAnswersTrueForValidArgs
	"test that validateArguments sets the ArgumentsAreValid instance variable 
	to true when arguments are valid"

	| cmd |
	cmd := AddCustWithFirstLast newWithFirst: 'Joe' Last: 'Smith'.
	cmd validate.
	self assert: [ cmd validArguments ] description: 'argumentsAreValid should be true'