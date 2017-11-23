testing - edge cases
testValidate_setsValidArgumentsToFalseWhenKeyValidationFails
	"test that validate sets validArguments instance variable to false when key validation fails"

	| app prod |
	app := App new start.
	DeleteProd initializeWithApp: app.
	prod := Product newWithKey: 'A10'.
	app domain products addProd: prod.
	self
		deny: [ (DeleteProd newWithKey: 'A12') isValid ]
		description: 'validArguments should be false'