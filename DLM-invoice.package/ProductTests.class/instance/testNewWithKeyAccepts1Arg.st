testing
testNewWithKeyAccepts1Arg
	"method Product newWithKey accepts one argument"
	
	self assert: [ ((Product class >>#newWithKey:) argumentNames) size = 1 ]
		description: 'method defined with incorrect number of parameters'. 
	
	



