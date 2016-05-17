testing
testLastIsValidForIdentityExists
	"test that method exists"

	self assert: [ Customer respondsTo: #lastIsValidForIdentity: ]
			description: 'method Customer lastIsValidForIdentity: does not exist'.

	