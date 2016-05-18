testing
testInitializeAccepts0Args
	"test that class method initialize accepts 0 arguments"
	
	self assert: [ ((Customer class >>#initialize) argumentNames) isEmpty ]
		description: 'method defined with incorrect number of parameters'. 
	
	

