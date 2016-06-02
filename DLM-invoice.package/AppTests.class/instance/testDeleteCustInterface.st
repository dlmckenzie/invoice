testing
testDeleteCustInterface
	"test method interface"

	self assert: [ App new respondsTo: #deleteCust: ] description: 'method does not exist'.
	self assert: [ (App new start deleteCust: 1) isMemberOf: App ] description: 'method did not answer with App'