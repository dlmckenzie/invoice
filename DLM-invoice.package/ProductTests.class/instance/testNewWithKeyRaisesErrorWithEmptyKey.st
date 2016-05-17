testing
testNewWithKeyRaisesErrorWithEmptyKey
	"error should be raised on empty key"

	self should: [ Product newWithKey: '' ] raise: Error.
