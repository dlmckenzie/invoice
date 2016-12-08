testing - edge cases
testValidate_setsValidArgumentsToFalseWhenKeyValidationFails
	"test that validArguments set to false for invalid prod key"

	| app key |
	app := App new start.
	key := 'A100'.
	Command initializeWithApp: app.
	app products addProd: (Product newWithKey: key).
	self
		deny: [ (AddProdWithKeyDescPrice  newWithKey: key Desc: 'Part A100' Price: 40.99) validArguments  ]
		description: 'validate should have set validArguments to false because of duplicate key'