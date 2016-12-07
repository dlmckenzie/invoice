testing - edge cases
testValidate_setsValidArgumentsToFalseForDuplicateProdKey
	"test that validArguments set to true for valid prod key"

	| app cmd |
	app := App new start.
	AddProdWithKey initializeWithApp: app.
	app products addProd: (Product newWithKey: 'A100').
	cmd := AddProdWithKey newWithKey: 'A100'.
	self 
		deny: [ cmd validArguments ]
		description: 'validate should have set validArguments instance variable to false (duplicate key)'