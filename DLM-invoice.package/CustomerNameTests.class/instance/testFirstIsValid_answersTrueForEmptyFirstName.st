testing - edge cases
testFirstIsValid_answersTrueForEmptyFirstName
	"test that validate answers true for emptycustomer name"

	| name |
	name := CustomerName newWithFirst: '' Last: 'Smith'.
	name validateFirst.
	self assert: [ name firstIsValid ] description: 'First name incorrectly marked as invalid'