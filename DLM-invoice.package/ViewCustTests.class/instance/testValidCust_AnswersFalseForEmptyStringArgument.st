testing
testValidCust_answersFalseForEmptyStringArgument
	self
		deny: [ (ViewCust newWithID: '') validCust ]
		description: 'ViewCust validCust''s argument may not be an empty string'