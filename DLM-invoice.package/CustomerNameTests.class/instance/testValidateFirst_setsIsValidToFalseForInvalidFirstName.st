testing - edge cases
testValidateFirst_setsIsValidToFalseForInvalidFirstName
	"test that method sets IsValid to flashen first name passes validation"

	| name |
	name := CustomerName newWithFirst: 'Ann,' Last: 'Baker'.
	name validateFirst.
	self deny: [ name firstIsValid ] description: 'should have answered false for invalid first name'