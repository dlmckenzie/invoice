testing - interface
testValidCust_interface
	"test method interface"

	self
		assert: [ DeleteCust new respondsTo: #custExists ] description: 'validCust method not recognized';
		assert: [ (DeleteCust newWithID: 1) custExists isKindOf: Boolean ]
			description: 'method did not answer with Boolean'