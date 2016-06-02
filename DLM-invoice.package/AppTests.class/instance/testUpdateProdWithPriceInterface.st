testing
testUpdateProdWithPriceInterface
	"confirm method's interface"

	self assert: [ App new respondsTo: #updateProd:WithPrice: ] description: 'method does not exist'.
	self
		assert: [ (App new start updateProd: 'A' WithPrice: 42.00) isMemberOf: App ]
		description: 'method did not answer with App'