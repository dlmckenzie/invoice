testing
testInitializeWithKeyAccepts1Arg
	"test that method accepts correct number of parameters"
	
	self assert: [ ((Product >>#initializeWithKey:) argumentNames) size = 1 ]
		description: 'method defined with incorrect number of parameters'. 


