testing - edge cases
testIsValid_answersFalseForInvalidLastName
	"test that validate answers true for valid customer name"

	| name |
	name := CustomerName newWithFirst: 'Joe' Last: ''.
	name validate.
	self deny: [ name isValid ] description: 'Name incorrectly marked as valid'