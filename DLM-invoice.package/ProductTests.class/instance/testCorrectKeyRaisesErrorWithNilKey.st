testing
testCorrectKeyRaisesErrorWithNilKey
	"product key may not be nil"

	self should: [ (Product newWithKey: 'AA') correctKey: nil ] raise: Error.