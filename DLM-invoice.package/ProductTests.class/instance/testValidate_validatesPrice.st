testing - happy path
testValidate_validatesPrice
	"test that validate validates price"

	self
		assert: [ (Product newWithKey: 'A') priceIsValid isKindOf: Boolean ]
		description: 'validatePrice was not called or was not coded'