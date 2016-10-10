testing - edge cases
testLastIsValid_answersFalseForInValidLastName
	"test that validate answers true for valid customer name"

	| name |
	name := CustomerName newWithFirst: 'Joe' Last: ''.
	name validateLast.
	self deny: [ name lastIsValid ] description: 'First name incorrectly marked as invalid'