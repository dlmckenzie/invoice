testing
testValidCust_answersFalseForNilArgument
	self
		deny: [ (ViewCust newWithID: nil) validCust ]
		description: 'ViewCust validCust''s argument may not be null'