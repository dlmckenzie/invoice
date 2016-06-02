testing
testDeleteProdInterface
	"test method interface"

	self assert: [ App new respondsTo: #deleteProd: ] description: 'method does not exist'.
	self
		assert: [ (App new start deleteProd: 'A') isMemberOf: App ]
		description: 'method did not answer with App'