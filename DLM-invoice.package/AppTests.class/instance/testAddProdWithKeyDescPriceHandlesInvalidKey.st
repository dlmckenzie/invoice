testing - product
testAddProdWithKeyDescPriceHandlesInvalidKey
	"test that method handles invalid key"

	self
		shouldnt: [ App new start addProdWithKey: '' Desc: 'Part A' Price: 12.00 ]
		raise: Error
		description: 'Invalid key should be handled gracefully'.
		
