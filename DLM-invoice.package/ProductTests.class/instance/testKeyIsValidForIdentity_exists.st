testing - interface
testKeyIsValidForIdentity_exists
	"confirm class method exists"
	
	self assert: [ Product respondsTo: #keyIsValidForIdentity: ]
			description: 'method Product keyIsValidForIdentity: does not exist'