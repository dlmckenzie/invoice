testing - interface
testInitializeWithFirstLast_interface
	"test method interface"

	self
		assert: [ CustomerName new respondsTo: #initializeWithFirst:Last: ]
		description: 'CustomerName initializeWithFirst:Last: method does not exist'.
	self
		assert: [ (CustomerName new initializeWithFirst: 'Sue' Last: 'Smith') isMemberOf: CustomerName ]
		description: 'method did not answer with a CustomerName'