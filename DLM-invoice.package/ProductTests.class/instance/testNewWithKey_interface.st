testing - interface
testNewWithKey_interface
	"test interface"

	self assert: [ Product respondsTo: #newWithKey: ] description: 'product method newWithKey: does not exist'.
	self assert: [ (Product newWithKey: 'A') isMemberOf: Product ] description: 'Product newWithKey not answering self'