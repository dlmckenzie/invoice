testing
testValidArgumentsAnswersFalse_whenAnyArent
	"test that validateArguments sets the ArgumentsAreValid instance variable 
	to false when not all arguments are valid"

	self deny: [ (AddCustWithFirstLast newWithFirst: 'Joe' Last: '') validArguments ] description: 'argumentsAreValid should be false'