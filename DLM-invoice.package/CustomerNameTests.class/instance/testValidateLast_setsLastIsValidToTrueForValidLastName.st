testing - happy path
testValidateLast_setsLastIsValidToTrueForValidLastName

	| name |
	name := CustomerName newWithFirst: 'Ann' Last: 'Baker'.
	name validateLast.
	self assert: [ name lastIsValid ] description: 'lastIsValid should be set to true'