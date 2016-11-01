testing
testValidCust_answersFalseForNonIntegerArgument
	self
		deny: [ (ViewCust newWithID: 'X') validCust ]
		description: 'ViewCust validCust''s argument was not a valid id'