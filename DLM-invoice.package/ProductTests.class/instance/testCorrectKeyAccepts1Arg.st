testing
testCorrectKeyAccepts1Arg
	"method Product key: accepts one argument"
	
	self assert: [ ((Product >>#correctKey:) argumentNames) size = 1 ]
		description: 'method defined with incorrect number of parameters'. 
	