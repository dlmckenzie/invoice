testing - edge cases
testValidate_setsIsValidToFalseForEmptySearchString
	"test validate sets isValid to false for empty search string"

	self
		deny: [ (SearchProdByDesc newWithDesc: '') isValid ]
		description: 'isValid should have been set to false'
	