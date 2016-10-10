testing - happy path
testValidateFirst_setsIsValidToTrueForValidFirstName
	"test that method sets IsValid to true when first name passes validation"

	| name |
	name := CustomerName newWithFirst: 'Ann' Last: 'Baker'.
	name validateFirst.
	self assert: [ name firstIsValid ] description: ''