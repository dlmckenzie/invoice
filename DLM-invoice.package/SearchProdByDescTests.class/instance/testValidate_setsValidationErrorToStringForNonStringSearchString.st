testing - edge cases
testValidate_setsValidationErrorToStringForNonStringSearchString
	"test validate sets validationError to string for nil search string"

	self
		deny: [ (SearchProdByDesc newWithDesc: 9) validationError isEmpty ]
		description: 'validationError should contain text'