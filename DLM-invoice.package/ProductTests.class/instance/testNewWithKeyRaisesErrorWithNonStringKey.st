testing
testNewWithKeyRaisesErrorWithNonStringKey
	"error should be raised on non-string key"

	self should: [ Product newWithKey: 100 ] raise: Error.