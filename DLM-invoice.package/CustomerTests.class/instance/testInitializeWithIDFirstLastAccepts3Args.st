testing
testInitializeWithIDFirstLastAccepts3Args
	"test method accepts 3 arguments"
	
	self assert: [ ((Customer >>#initializeWithID:First:Last:) argumentNames) size = 3 ]
		description: 'method defined with incorrect number of parameters'. 

	 