testing
testAddProdWithKeyExists
	"test that ethod exists"

	self assert: [ App new respondsTo: #addProdWithKey: ] description: 'method does not exist'