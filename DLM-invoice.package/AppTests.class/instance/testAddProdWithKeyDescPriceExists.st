testing
testAddProdWithKeyDescPriceExists
	"test that ethod exists"

	self assert: [ App new respondsTo: #addProdWithKey:Desc:Price: ] description: 'method does not exist'