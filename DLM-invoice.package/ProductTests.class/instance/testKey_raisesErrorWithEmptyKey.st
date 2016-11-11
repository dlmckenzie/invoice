testing - exceptions
testKey_raisesErrorWithEmptyKey
	"error should be raised on empty key"

	self should: [ (Product new) key: '' ] raise: Error.
