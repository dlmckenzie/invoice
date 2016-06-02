testing
testUpdateProdWithDescriptionInterface
	"confirm method's interface"

	self
		assert: [ App new respondsTo: #updateProd:WithDescription: ]
		description: 'method does not exist'.
	self
		assert: [ (App new start updateProd: 'A' WithDescription: 'Part A') isMemberOf: App ]
		description: 'method did not answer with App'