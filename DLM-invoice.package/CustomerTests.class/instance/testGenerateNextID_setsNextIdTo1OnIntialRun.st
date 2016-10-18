testing - edge cases
testGenerateNextID_setsNextIdTo1OnIntialRun
	"On first execution, this should set nextID to 1"

	self
		assert: [ Customer initialize generateNextID = 1 ]
		description: 'nextID should be 1 on first run'