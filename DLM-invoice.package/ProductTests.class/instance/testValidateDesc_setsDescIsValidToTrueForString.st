testing - happy path
testValidateDesc_setsDescIsValidToTrueForString
	"test that validateDesc sets descIsValid to true for string"

	| prod |
	prod := Product newWithKey: 'A'.
	self
		assert: [ prod descriptionIsValid ]
		description: 'Product validateDesc should have set validDesc to true'