validation
validateForIdentity
	"validate that Customer Name can be uniquely identified"

	self
		validateFirst;
		validateLast.
	identityIsValid := firstIsValid and: lastIsValid.
	identityIsValid
		ifFalse: [ identityValidationFailureReason := 'First and/or last name not valid' ]