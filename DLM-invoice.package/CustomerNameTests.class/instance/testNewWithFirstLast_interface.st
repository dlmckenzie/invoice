testing - interface
testNewWithFirstLast_interface
	"test method interface"

	self
		assert: [ CustomerName respondsTo: #newWithFirst:Last: ]
		description: 'CustomerName newWithFirst:Last: method does not exist'.
	self
		assert: [ (CustomerName newWithFirst: 'Sue' Last: 'Smith') isMemberOf: CustomerName ]
		description: 'method did not answer with an AddCustWithFirstLast command'