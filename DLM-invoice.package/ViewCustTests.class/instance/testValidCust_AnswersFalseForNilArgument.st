testing
testValidCust_AnswersFalseForNilArgument
	self
		deny: [ (ViewCust newWithID: nil) validCust ]
		description: 'ViewCust validCust''s argument may not be null'