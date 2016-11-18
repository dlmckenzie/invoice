testing - happy path
testValidate_validatesKey
	"test that validate validates key"

	self
		assert: [ (Product newWithKey: 'A') keyIsValid isKindOf: Boolean ]
		description: 'validateKey was not called or was not coded'