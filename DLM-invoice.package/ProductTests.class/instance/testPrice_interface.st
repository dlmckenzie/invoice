testing - interface
testPrice_interface
	"method Product price exists"

	| prod |
	self assert: [ Product new respondsTo: #price ] description: 'product method price does not exist'.
	prod := Product newWithKey: 'A'.
	prod updatePrice: 9.
	self assert: [ prod price isKindOf: Number ] description: 'produt price should have answered a number'