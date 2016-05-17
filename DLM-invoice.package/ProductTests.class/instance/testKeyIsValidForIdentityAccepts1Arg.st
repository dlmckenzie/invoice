testing
testKeyIsValidForIdentityAccepts1Arg
	"method Product keyIsValidForIdentity accepts one argument"
	
	self assert: [ ((Product class >>#keyIsValidForIdentity:) argumentNames) size = 1 ]
		description: 'method defined with incorrect number of parameters'. 
	
	



