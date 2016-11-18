testing - interface
testUpdatePrice_interface
	"test method exists"

	| prod |
	self assert: [ Product new respondsTo: #updatePrice: ] description: 'method does not exist'.
	prod := Product newWithKey: 'A'.
	(prod updatePrice: 9) isMemberOf: Product