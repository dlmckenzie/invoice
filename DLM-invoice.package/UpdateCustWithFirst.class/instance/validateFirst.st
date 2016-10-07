validation
validateFirst
	"comment"

	(Customer firstIsValidForIdentity: first)
		ifTrue: [ first = origFirst
				ifTrue: [ validationFailureReason := 'New first name matches current name'.
					validArguments := false ]
				ifFalse: [ ^ self ] ]
		ifFalse: [ 	validationFailureReason := 'Invalid first name'.
	validArguments := false ]
