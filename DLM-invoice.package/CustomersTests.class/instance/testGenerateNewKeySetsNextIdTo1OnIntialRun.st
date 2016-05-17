testing
testGenerateNewKeySetsNextIdTo1OnIntialRun
	"On first execution, this should set nextID to 1"

	Customers initialize. 
	self assert: [ Customers generateNextID = 1 ] description: 'nextID should be 1 on first run'
			