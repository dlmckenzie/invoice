testing - happy path
testValidateFirst_setsFirstIsValidToTrueForValidFirstName

	| name |
	name := CustomerName newWithFirst: 'Joe' Last: 'Smith'. 
	name validateFirst.
	self assert: [ name firstIsValid ] description: 'firstIsValid should be set to true'
	