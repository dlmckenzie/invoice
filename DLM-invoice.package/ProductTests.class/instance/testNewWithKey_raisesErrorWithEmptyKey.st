testing - exceptions
testNewWithKey_raisesErrorWithEmptyKey
	"error should be raised on empty key"

	self should: [ Product newWithKey: '' ] raise: Error.
