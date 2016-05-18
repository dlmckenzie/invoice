testing
testGenerateNextIDIncrementsBy1
	"Each execute should answer ID incremented by 1"

	self
		assert: [ (Customer
				initialize;
				generateNextID;
				generateNextID) = 2 ]
		description: 'nextID should be 2 on second run'