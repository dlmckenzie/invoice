testing
testGenerateNextIDAccepts0Args
	"test that class method generateNextID accepts 1 argument"
	
	self assert: [ ((Customer class >>#generateNextID) argumentNames) isEmpty ]
		description: 'method defined with incorrect number of parameters'. 
	
	

