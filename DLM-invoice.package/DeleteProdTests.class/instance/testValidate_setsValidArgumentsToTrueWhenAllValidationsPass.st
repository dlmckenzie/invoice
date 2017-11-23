testing - happy path
testValidate_setsValidArgumentsToTrueWhenAllValidationsPass
	"test that validate setws validArguments instance variable to true when all validations pass"

	| app prod key |
	app := App new start.
	key := 'A10'.
	DeleteProd initializeWithApp: app.
	prod := Product newWithKey: key.
	app domain products addProd: prod.
	self
		assert: [ (DeleteProd newWithKey: key) isValid ]
		description: 'validArguments should be true'