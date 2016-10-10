testing - edge cases
testFirstIsValid_answersFalseIfValidateFirstNotYetCalled
	"test that validate answers false if validateLast has not yet been called"

	self
		deny: [ CustomerName new firstIsValid ]
		description: 'last ifValid should have answered false not nil'