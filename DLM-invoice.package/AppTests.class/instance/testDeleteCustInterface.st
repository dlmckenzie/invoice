testing - customer
testDeleteCustInterface
	"test method interface"

	self assert: [ App new respondsTo: #deleteCust: ] description: 'method does not exist'.
	self assert: [ (App new start deleteCust: 1) isKindOf: App ] description: 'method did not answer with App or its subclass'