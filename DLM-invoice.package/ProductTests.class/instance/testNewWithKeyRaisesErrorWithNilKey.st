testing
testNewWithKeyRaisesErrorWithNilKey
	"error should be raised on nil key"

	self should: [ Product newWithKey: nil ] raise: Error.