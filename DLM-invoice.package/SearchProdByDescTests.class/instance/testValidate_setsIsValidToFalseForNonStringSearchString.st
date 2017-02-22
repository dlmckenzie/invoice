testing - edge cases
testValidate_setsIsValidToFalseForNonStringSearchString
	"test validate sets isValid to false for a non-string search string"

	self
		deny: [ (SearchProdByDesc newWithDesc: 9) isValid ]
		description: 'isValid should have been set to false'