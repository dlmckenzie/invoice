testing - product
testAddProdWithKeyHandlesInvalidKey
	"test that method handles invalid key)"

	self
		shouldnt: [ App new start addProdWithKey: '' ]
		raise: Error
		description: 'Invalid key should not result in error'