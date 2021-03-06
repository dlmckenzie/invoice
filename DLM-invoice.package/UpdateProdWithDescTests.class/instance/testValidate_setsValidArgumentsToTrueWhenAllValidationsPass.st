testing - edge cases
testValidate_setsValidArgumentsToTrueWhenAllValidationsPass
	"test that validArguments set to true when all validations pass"

	| app cmd prod |
	app := App new start.
	Command initializeWithApp: app.
	prod := Product newWithKey: 'A10'.
	prod updateDescription: 'Part A10'.
	app domain products addProd: prod.
	cmd := UpdateProdWithDesc newWithProd: 'A10' Desc: 'Updated Part A10'.
	self
		assert: [ cmd validate isValid ]
		description: 'UpdateProdWithDesc validate should have set isValid instance variable to true'