testing - interface
testUpdateDescription_exists
	"test method exists"

	self assert: [ Product new respondsTo: #updateDescription: ] description: 'method does not exist'
