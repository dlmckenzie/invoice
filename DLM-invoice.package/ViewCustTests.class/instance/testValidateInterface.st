testing
testValidateInterface
"test method interface"

	self
		assert: [ ViewCust new respondsTo: #validate ]
		description: 'ViewCust validate method does not exist'.
	self
		assert: [ (ViewCust newWithID: 1) validate isMemberOf: ViewCust ]
		description: 'method must answer self'	