testing - edge cases
testLastIsValid_answersFalseIfValidateLastNotYetCalled
	"test that validate answers false if validateLast has not yet been called"

	self deny: [ CustomerName new lastIsValid ] description: 'last ifValid should have answered false not nil'