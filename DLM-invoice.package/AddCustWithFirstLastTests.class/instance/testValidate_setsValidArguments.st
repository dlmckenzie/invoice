testing - happy path
testValidate_setsValidArguments
	"test that validate sets the validArguments instance variable to a boolean"

	self
		assert: [ (AddCustWithFirstLast newWithFirst: 'Joe' Last: 'Smith') isValid ]
		description: 'validate should have set validArguments instance variable to a boolean (difficult to test)'