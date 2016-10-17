testing - happy path
testLastIsValid_answersTrueForValidLastName
	"test that validate answers true for valid customer name"

	| name |
	name := CustomerName newWithFirst: 'Joe' Last: 'Smith'.
	name validateLast .
	self assert: [ name lastIsValid ] description: 'Last name incorrectly marked as invalid'