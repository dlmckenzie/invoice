testing
testGenerateNewKeyIncrementsBy1
	"Each execute should answer ID incremented by 1"

	Customers initialize. 
	Customers generateNextID.
	self assert: [ Customers generateNextID = 2 ] description: 'nextID should be 2 on second run'
			