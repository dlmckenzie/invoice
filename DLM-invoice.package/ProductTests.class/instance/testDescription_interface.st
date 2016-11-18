testing - interface
testDescription_interface
	"test method exists"

	self assert: [ Product new respondsTo: #description ] description: 'method does not exist'.
	self
		assert: [ ((Product newWithKey: 'PR01') updateDescription: 'important part') description isKindOf: String ]
		description: 'Method did not answer with String'