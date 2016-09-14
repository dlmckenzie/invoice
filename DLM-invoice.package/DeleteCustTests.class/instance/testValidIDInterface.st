testing
testValidIDInterface
	"test method interface"

	self
		assert: [ DeleteCust new respondsTo: #validID ] description: 'validID method not recognized';
		assert: [ (DeleteCust newWithID: 1) validID isKindOf: Boolean ]
			description: 'method did not answer with Boolean'