testing - edge cases
testValidate_setsIsValidToFalseWhenAnyValidationFails
	"test description"

	| prod |
	prod := Product newWithKey: ''.
	self
		deny: [ prod keyIsValid & prod descriptionIsValid & prod priceIsValid ]
		description: 'Product is not valid'.
	self deny: [ prod isValid ] description: 'validate method not properly setting isValid instance variable'