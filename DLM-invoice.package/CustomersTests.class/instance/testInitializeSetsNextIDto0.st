testing
testInitializeSetsNextIDto0
	"initialize Customers"

	Customers initialize.
	self assert: [ Customers nextID = 0 ] description: 'NextID not initialized to 0' 