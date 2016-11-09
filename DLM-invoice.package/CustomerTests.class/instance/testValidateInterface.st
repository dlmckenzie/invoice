testing - interface
testValidateInterface
	"test method interface"

	self
		assert: [ Customer new respondsTo: #validate ]
		description: 'Customer validate method does not exist'.
	self
		assert: [ (Customer newWithName: (CustomerName newWithFirst: 'Joe' Last: 'Smith')) validate isMemberOf: Customer ]
		description: 'method did not answer with a Customer'