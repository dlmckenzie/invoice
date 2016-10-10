testing - happy path
testIsValid_answersTrueForValidName
	"test that validate answers true for valid customer name"

	| name |
	name := CustomerName newWithFirst: 'Joe' Last: 'Smith'.
	name validate.
	self assert: [ name isValid ] description: 'Name incorrectly marked as invalid'