testing - interface
testFirst_interface
	"test method accepts 1 argument"

	self assert: [ CustomerName new respondsTo: #first: ] description: 'CustomerName first: method does not exist'.
	self
		assert: [ (CustomerName new first: 'Joe') isMemberOf: CustomerName ]
		description: 'method defined with incorrect number of parameters'