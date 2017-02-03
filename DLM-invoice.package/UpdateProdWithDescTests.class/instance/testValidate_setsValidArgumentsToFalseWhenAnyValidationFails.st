testing - edge cases
testValidate_setsValidArgumentsToFalseWhenAnyValidationFails
	"test that validArguments is set to false if any validation fails"

	| app cmd prod |
	app := App new start.
	Command initializeWithApp: app.
	prod := Product newWithKey: 'A10'.
	prod updateDescription: 'Part A10'.
	app products addProd: prod.
	cmd := UpdateProdWithDesc newWithProd: 'A12' Desc: 'Updated Part A10'.
	self
		deny: [ cmd validate isValid ]
		description: 'UpdateProdWithDesc validate should have set isValid instance variable to false'