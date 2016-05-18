testing
testInitializeWithIDFirstLastSetsIDToArgument
	"test method sets ID to argument"

	| id |
	id := 99.
	self
		assert: [ (Customer new initializeWithID: id First: 'Joe' Last: 'Smith') id = id ]
		description: 'id not set to argument'