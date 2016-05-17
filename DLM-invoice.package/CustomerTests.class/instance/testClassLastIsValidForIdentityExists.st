testing
testClassLastIsValidForIdentityExists
	"confirm class method exists"
	
	self assert: [ Customer respondsTo: #lastIsValidForIdentity: ]
			description: 'method Customer firstIsValidForIdentity: does not exist'
