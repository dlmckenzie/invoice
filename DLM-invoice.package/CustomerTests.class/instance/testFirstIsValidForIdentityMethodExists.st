testing
testFirstIsValidForIdentityMethodExists
	"test existance of method"
	
	self assert: [ Customer respondsTo: #firstIsValidForIdentity: ]
			description: 'method Customer firstIsValidForIdentity does not exist'

