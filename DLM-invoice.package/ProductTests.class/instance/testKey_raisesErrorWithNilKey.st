testing - exceptions
testKey_raisesErrorWithNilKey
	"error should be raised on nil key"

	self should: [ (Product new) key: nil ] raise: Error.
