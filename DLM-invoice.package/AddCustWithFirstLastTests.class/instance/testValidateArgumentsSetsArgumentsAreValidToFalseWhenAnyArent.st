testing
testValidateArgumentsSetsArgumentsAreValidToFalseWhenAnyArent
	"test that validateArguments sets the ArgumentsAreValid instance variable 
	to false when not all arguments are valid"

	| cmd |
	cmd := AddCustWithFirstLast newWithFirst: 'Joe' Last: ''.
	cmd validateArguments.
	self deny: [ cmd argumentsAreValid ] description: 'argumentsAreValid should be false'