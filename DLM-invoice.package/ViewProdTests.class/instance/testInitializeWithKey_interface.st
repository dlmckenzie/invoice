testing - interface
testInitializeWithKey_interface
	"test method interface"

	self
		assert: [ ViewProd new respondsTo: #initializeWithKey: ]
		description: 'ViewProd initializeWithKey not found'.
	self 
		assert: [ ((ViewProd newWithKey: 'test') initializeWithKey: 'test') isMemberOf: ViewProd  ] description: 'method not answering self'