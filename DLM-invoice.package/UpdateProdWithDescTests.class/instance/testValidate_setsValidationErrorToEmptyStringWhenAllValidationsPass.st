testing - happy path
testValidate_setsValidationErrorToEmptyStringWhenAllValidationsPass
	""

	| app cmd prod |
	app := App new start.
	Command initializeWithApp: app.
	prod := Product newWithKey: 'A10'.
	prod updateDescription: 'Part A10'.
	app domain products addProd: prod.
	cmd := UpdateProdWithDesc newWithProd: 'A10' Desc: 'Updated Part A10'.
	self
		assert: [ cmd validate validationError = '' ]
		description: 'UpdateProdWithDesc validate should have set validationFailureReason to emtpy string'