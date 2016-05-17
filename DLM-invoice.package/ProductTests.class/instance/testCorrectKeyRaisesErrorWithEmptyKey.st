testing
testCorrectKeyRaisesErrorWithEmptyKey
	"product key may not be an empty string"

	self should: [ (Product newWithKey: 'AA') correctKey: '' ] raise: Error.