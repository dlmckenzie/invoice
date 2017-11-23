testing - edge cases
testValidate_setsValidationErrorToStringWhenValidationFails
	"test that validate sets the validationError to a string when validation fails
	(the string is an explanation of the error. If there is no error than string is empty)"

	| app cmd prod |
	app := App new start.
	Command initializeWithApp: app.
	prod := Product newWithKey: 'A10'.
	prod updateDescription: 'Part A10'.
	app domain products addProd: prod.
	cmd := UpdateProdWithDesc newWithProd: 'A10' Desc: nil.
	self
		deny: [ cmd validate validationError = '' ]
		description:
			'UpdateProdWithDesc validate should have set validationFailureReason to string describing error'