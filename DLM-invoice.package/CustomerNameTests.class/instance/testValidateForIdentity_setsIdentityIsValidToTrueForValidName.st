testing - happy path
testValidateForIdentity_setsIdentityIsValidToTrueForValidName
	"happy path"

	| name |
	name := CustomerName newWithFirst: 'Joe' Last: 'Smith'.
	name validateForIdentity.
	self assert: [ name identityIsValid ] description: 'IdentityIsValid should be set to true'