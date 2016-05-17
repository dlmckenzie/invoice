testing
testKeyIsValidForIdentityExists
	"confirm class method exists"
	
	self assert: [ Product respondsTo: #keyIsValidForIdentity: ]
			description: 'method Product keyIsValidForIdentity: does not exist'