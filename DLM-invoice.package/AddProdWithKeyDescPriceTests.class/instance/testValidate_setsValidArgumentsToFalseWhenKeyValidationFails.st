testing - edge cases
testValidate_setsValidArgumentsToFalseWhenKeyValidationFails
	"test that validArguments set to false for invalid prod key, description or price"

	| app |
	app := App new.
	app start.
	app products addProd: (Product newWithKey: 'A100').
	self
		assert: [ (AddProdWithKeyDescPrice  newWithKey: 'A100' Desc: 'Part A200' Price: 40.99) validArguments  ]
		description: 'validate should have set isValid instance variable to true'