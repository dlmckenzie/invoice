testing - interface
testInitializeWithKeyPrice_interface
	"test method exists"

	self
		assert: [ UpdateProdWithPrice new respondsTo: #initializeWithKey:Price: ]
		description: 'UpdateProdWithPrice initializeWithKey:Price: doesn''t exist'.
	self
		assert: [ ((UpdateProdWithPrice new) initializeWithKey: 'A10' Price: 'Part A10') isMemberOf: UpdateProdWithPrice    ]
		description: 'UpdateProdWithPrice initializeWithKey:Price: doesn''t answer self'