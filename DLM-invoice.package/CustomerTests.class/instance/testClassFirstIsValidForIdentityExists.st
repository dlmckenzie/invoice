testing
testClassFirstIsValidForIdentityExists
	"confirm class method exists"
	
	self assert: [ Customer respondsTo: #firstIsValidForIdentity: ]
			description: 'method Customer firstIsValidForIdentity: does not exist'
