testing - edge cases
testValidateForIdentity_setsIdentityIsValidToFalseForInvalidName
	"happy path"

	| name |
	name := CustomerName newWithFirst: 'Joe' Last: ''.
	name validateForIdentity.
	self deny: [ name identityIsValid ] description: 'identityIsValid should be set to false'