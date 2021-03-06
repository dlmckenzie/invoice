testing - happy path
testValidate_setsValidArgumentsToTrueForValidProdKey
	"test that validArguments set to true for valid prod key"

	| app cli |
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	app domain products addProd: (Product newWithKey: 'A100').
	self 
		assert: [ (AddProdWithKey newWithKey: 'A200') isValid ]
		description: 'validate should have set validArguments instance variable to true'