testing - happy path
testValidate_setsValidArgumentsToTrueForValidProdKey
	"test that validArguments set to true for valid prod key"
	
	| app |
	app := App new.
	app start.
	app products addProd: (Product newWithKey: 'A100').
	self
		assert: [ (AddProdWithKey newWithKey: 'A200') validArguments ]
		description: 'validate should have set validArguments instance variable to true'