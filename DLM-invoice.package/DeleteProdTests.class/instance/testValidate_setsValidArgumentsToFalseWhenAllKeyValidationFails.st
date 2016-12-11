testing - edge cases
testValidate_setsValidArgumentsToFalseWhenAllKeyValidationFails
	"test that validate sets validArguments instance variable to false when key validation fails"

	| app prod |
	app := App new start.
	DeleteProd initializeWithApp: app.
	prod := Product newWithKey: 'A10'.
	app products addProd: prod.
	self
		deny: [ (DeleteProd newWithKey: 'A12') validArguments ]
		description: 'validArguments should be false'