testing
testValidCustInterface
	"test method interface"

	self
		assert: [ DeleteCust new respondsTo: #validCust ] description: 'validCust method not recognized';
		assert: [ (DeleteCust newWithID: 1) validCust isKindOf: Boolean ]
			description: 'method did not answer with Boolean'