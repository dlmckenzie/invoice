testing - edge cases
testValidate_setsValidationErrorToStringForEmptyStringSearchString
	"test validate sets validationError to string for a empty search string"

	self
		deny: [ (SearchProdByDesc newWithDesc: '') validationError isEmpty ]
		description: 'validationError should contain text'