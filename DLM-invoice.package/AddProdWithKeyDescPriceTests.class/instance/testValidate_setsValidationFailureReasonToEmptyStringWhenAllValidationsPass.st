testing - edge cases
testValidate_setsValidationFailureReasonToEmptyStringWhenAllValidationsPass
	"test that the validationError instance variable is set to '' (empty string) when all validations pass"
	
	AddProdWithKeyDescPrice initializeWithApp: (App new start).
	self
		assert: [ (AddProdWithKeyDescPrice newWithKey: 'A100' Desc: 'Part A100'  Price: 50) validationError  isEmpty  ]
		description: 'validation error should be empty when all validations pass'