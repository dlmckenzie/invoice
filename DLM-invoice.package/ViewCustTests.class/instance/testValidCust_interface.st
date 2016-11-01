testing - interface
testValidCust_interface
	"test method interface"

	self
		assert: [ ViewCust new respondsTo: #validCust ]
			description: 'validCust method not recognized';
		assert: [ (ViewCust newWithID: 1) validCust isKindOf: Boolean ]
			description: 'method did not answer with Boolean'