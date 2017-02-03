testing - edge cases
testValidate_setsValidArgumentsToFalseWhenPriceValidationFails
	"test that validArguments set to false for invalid price"

	| app |
	app := App new start.

	Command initializeWithApp: app.
	
	self
		deny: [ (AddProdWithKeyDescPrice  newWithKey: 'A100' Desc: 'Part A100' Price: '25 dollars') isValid  ]
		description: 'validate should have set validArguments to false because of invalid description'