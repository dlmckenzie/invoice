testing
testFirstIsValidForIdentityAccepts1arg
	"test that method firstIsValidForIdentity accepts 1 arguments"
	
	self assert: [ ((Customer class >>#firstIsValidForIdentity:) argumentNames) size = 1 ]
		description: 'method defined with incorrect number of parameters'. 
	
	

