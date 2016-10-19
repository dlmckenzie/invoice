private-validation
validate
	name validateForIdentity.
	validArguments := name identityIsValid
		ifTrue: [ true ]
		ifFalse: [ false ]