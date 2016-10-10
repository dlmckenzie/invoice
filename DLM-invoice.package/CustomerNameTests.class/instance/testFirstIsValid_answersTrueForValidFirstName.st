testing - happy path
testFirstIsValid_answersTrueForValidFirstName
	"test that validate answers true for valid customer name"

	| name |
	name := CustomerName newWithFirst: 'Joe' Last: 'Smith'.
	name validateFirst.
	self assert: [ name firstIsValid ] description: 'First name incorrectly marked as invalid'