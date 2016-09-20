testing
testValidateInterface
	"test method interface"

	self
		assert: [ DeleteCust new respondsTo: #validate ]
		description: 'DeleteCust validate method does not exist'.
	self
		assert: [ (DeleteCust newWithID: 1) validate isMemberOf: DeleteCust ]
		description: 'method must answer a boolean'