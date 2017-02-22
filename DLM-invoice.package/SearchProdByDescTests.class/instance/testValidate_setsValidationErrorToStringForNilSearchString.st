testing - edge cases
testValidate_setsValidationErrorToStringForNilSearchString
	"test validate sets validationError to string for nil search string"

	self
		deny: [ (SearchProdByDesc newWithDesc: nil) validationError isEmpty ]
		description: 'validationError should contain text'