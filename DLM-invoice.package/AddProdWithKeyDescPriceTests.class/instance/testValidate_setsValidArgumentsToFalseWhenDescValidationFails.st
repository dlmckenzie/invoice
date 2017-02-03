testing - edge cases
testValidate_setsValidArgumentsToFalseWhenDescValidationFails
	"test that validArguments set to false for invalid prod description"

	| app |
	app := App new start.

	Command initializeWithApp: app.
	
	self
		deny: [ (AddProdWithKeyDescPrice  newWithKey: 'A100' Desc: 3 Price: 40.99) isValid  ]
		description: 'validate should have set validArguments to false because of invalid description'