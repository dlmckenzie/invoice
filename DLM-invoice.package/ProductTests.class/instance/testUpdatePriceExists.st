testing
testUpdatePriceExists
	"test method exists"

	self assert: [ Product new respondsTo: #updatePrice: ] description: 'method does not exist'