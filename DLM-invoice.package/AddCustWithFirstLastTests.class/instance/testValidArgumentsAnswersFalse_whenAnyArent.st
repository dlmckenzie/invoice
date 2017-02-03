testing - edge cases
testValidArgumentsAnswersFalse_whenAnyArent
	"test that validateArguments sets the ArgumentsAreValid instance variable 
	to false when not all arguments are valid"

	self deny: [ (AddCustWithFirstLast newWithFirst: 'Joe' Last: '') isValid ] description: 'argumentsAreValid should be false'