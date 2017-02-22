testing - happy path
testValidate_setsValidationErrorToEmptyStringForValidSearchString
	"test validate sets validationError to empty string for a valid search string"

	self
		assert: [ (SearchProdByDesc newWithDesc: 'test') validationError isEmpty ]
		description: 'validationError should by empty'