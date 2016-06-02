testing
testAddProdWithKeyDescPriceHandlesInvalidPrice
	"test that method handles invalid key"

	self
		shouldnt: [ App new start addProdWithKey: 'A' Desc: 'Part A' Price: '' ]
		raise: Error
		description: 'Invalid price should be handled gracefully'