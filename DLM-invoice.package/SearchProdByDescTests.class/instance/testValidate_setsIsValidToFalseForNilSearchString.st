testing - edge cases
testValidate_setsIsValidToFalseForNilSearchString
	"test validate sets isValid to false for a nil search string"

	self
		deny: [ (SearchProdByDesc newWithDesc: nil) isValid ]
		description: 'isValid should have been set to false'
	