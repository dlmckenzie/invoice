testing - happy path
testValidate_setsValidArgumentsToTrueWhenAllValidationsPass
	"test that validArguments set to true for valid prod key, description and price"

	| app |
	app := App new.
	app start.
	app products addProd: (Product newWithKey: 'A100').
	self
		assert: [ (AddProdWithKeyDescPrice  newWithKey: 'A200' Desc: 'Part A200' Price: 40.99) validArguments  ]
		description: 'validate should have set isValid instance variable to true'