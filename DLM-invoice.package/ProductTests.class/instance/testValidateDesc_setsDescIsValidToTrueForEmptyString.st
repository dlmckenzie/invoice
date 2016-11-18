testing - edge cases
testValidateDesc_setsDescIsValidToTrueForEmptyString
	"test that validateDesc sets descIsValid to true for empty string"

	| prod |
	prod := Product newWithKey: ''.
	self assert: [ prod descriptionIsValid ] description: 'Product validateDesc should have set validDesc to true'