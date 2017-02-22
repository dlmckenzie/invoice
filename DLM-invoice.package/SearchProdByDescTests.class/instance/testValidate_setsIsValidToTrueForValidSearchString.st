testing - happy path
testValidate_setsIsValidToTrueForValidSearchString
	"test validate sets isValid to true for a valid search string"

	self
		assert: [ (SearchProdByDesc newWithDesc: 'test') isValid ]
		description: 'isValid should have been set to true'