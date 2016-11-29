testing - happy path
testValidate_setsValidArgumentsToFalseForDuplicateProdKey
	"test that validArguments set to true for valid prod key"

	| app cli key |
	key := 'A100'.
	app := App new.
	app start.
	cli := CLI new.
	cli start: app.
	app products addProd: (Product newWithKey: key).
	self
		deny: [ (AddProdWithKey newWithKey: key) validArguments ]
		description: 'validate should have set validArguments instance variable to false (duplicate key)'