testing
testKeyRaisesErrorWithNilKey
	"error should be raised on nil key"

	self should: [ (Product new) key: nil ] raise: Error.
