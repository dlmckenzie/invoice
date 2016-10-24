testing - edge cases
testValidateFirst_setsFirstIsValidToFalseForNameWithComma
	
	| name |
	name := CustomerName newWithFirst: 'Joe,' Last: 'Smith'.
	name validateFirst.
	self deny: [ name firstIsValid ] description: 'firstIsValid should be set to false'