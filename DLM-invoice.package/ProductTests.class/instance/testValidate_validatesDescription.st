testing - happy path
testValidate_validatesDescription
	"test that validate validates key"

	self
		assert: [ (Product newWithKey: 'A') descriptionIsValid isKindOf: Boolean ]
		description: 'validateDesc was not called or was not coded'