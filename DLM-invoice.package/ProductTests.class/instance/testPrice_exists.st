testing - interface
testPrice_exists
	"method Product price exists"

	self assert: [ (Product new) respondsTo: #price ] description: 'product method price does not exist'