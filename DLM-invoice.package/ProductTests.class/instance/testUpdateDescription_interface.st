testing - interface
testUpdateDescription_interface
	"test method exists"

	| prod |
	self assert: [ (Product newWithKey: 'A') respondsTo: #updateDescription: ] description: 'method does not exist'.
	prod := Product newWithKey: 'A'.
	(prod updateDescription: 'test part') isMemberOf: String