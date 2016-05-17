testing
testDescriptionAccepts0Arg
	"method product prodName accepts zero arguments"
	
	self assert: [ ((Product >>#description) argumentNames) size = 0 ]
		description: 'method defined with incorrect number of parameters'. 
	