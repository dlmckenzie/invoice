testing
testKeyRaisesErrorWithEmptyKey
	"error should be raised on empty key"

	self should: [ (Product new) key: '' ] raise: Error.
