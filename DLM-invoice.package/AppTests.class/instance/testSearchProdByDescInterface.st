testing
testSearchProdByDescInterface
	"confirm method's interface"

	self
		assert: [ App new respondsTo: #searchProdByDesc: ]
		description: 'method does not exist'.
	self
		assert: [ (App new start searchProdByDesc: 'x') isMemberOf: App ]
		description: 'method did not answer with App'