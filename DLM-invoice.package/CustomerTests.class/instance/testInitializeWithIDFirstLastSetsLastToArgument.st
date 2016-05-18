testing
testInitializeWithIDFirstLastSetsLastToArgument
	"test method sets ID to argument"

	| last |
	last := 'Smith'.
	self
		assert: [ (Customer new initializeWithID: 1 First: 'Angie' Last: last) last = last ]
		description: 'id not set to argument'