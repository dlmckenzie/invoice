testing - happy path
testValidate_setsIsValidToTrueWhenAllValidationsPass
	"test validate method sets the isValid instance variable to true when all validations are passed"

	| prod |
	prod := Product newWithKey: 'A1'.
	self assert: [ prod keyIsValid & prod descriptionIsValid & prod priceIsValid ] description: 'Invalid test - product is not valid'.
	self assert: [ prod isValid ] description: 'validate method not properly setting isValid instance variable'