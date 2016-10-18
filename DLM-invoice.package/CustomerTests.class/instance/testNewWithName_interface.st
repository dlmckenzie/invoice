testing - interface
testNewWithName_interface
	"test interface"
	
	| name |
	self
		assert: [ Customer respondsTo: #newWithName: ]
		description: 'Customer class method newWithName: does not exist'.
	name := CustomerName newWithFirst: 'Joe' Last: 'Smith'.
	self
		assert: [ (Customer newWithName: name)  isMemberOf: Customer ]
		description: 'method did not answer with a Customer'