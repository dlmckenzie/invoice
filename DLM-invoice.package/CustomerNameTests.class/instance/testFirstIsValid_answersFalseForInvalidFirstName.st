testing - edge cases
testFirstIsValid_answersFalseForInvalidFirstName
	"test that validate answers false for invalid first name"

	| name |
	name := CustomerName newWithFirst: 'Joe,' Last: 'Smith'.
	name validateFirst.
	self deny: [ name firstIsValid ] description: 'First name incorrectly marked as valid'