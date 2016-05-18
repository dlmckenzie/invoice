testing
testInitializeWithIDFirstLastSetsFirstToArgument
	"test method sets ID to argument"

	| first |
	first := 'Angie'.
	self
		assert: [ (Customer new initializeWithID: 1 First: first Last: 'Smith') first = first ]
		description: 'id not set to argument'