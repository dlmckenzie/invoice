testing
testUpdateDescriptionAccepts1Arg
	"test method accepts one argument"
	
	self assert: [ ((Product >>#updateDescription:) argumentNames) size = 1 ]
		description: 'method defined with incorrect number of parameters'. 
	
	



