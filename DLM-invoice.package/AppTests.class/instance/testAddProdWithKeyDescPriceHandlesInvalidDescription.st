testing
testAddProdWithKeyDescPriceHandlesInvalidDescription
	"test that method handles invalid key"

	self
		shouldnt: [ App new start addProdWithKey: 'A' Desc: '' Price: 12.00 ]
		raise: Error
		description: 'Invalid description should be handled gracefully'