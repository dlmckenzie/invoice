testing
testCorrectKeyUpdatesKey
	"sets the product key"

	| key |
	key := 'AB01'.
	self assert: [ (Product new correctKey: key) key = key ] description: 'key did not get updated'