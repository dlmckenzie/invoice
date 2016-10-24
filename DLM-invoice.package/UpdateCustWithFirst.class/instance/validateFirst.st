private-validation
validateFirst
	"comment"

	cust name firstIsValid
		ifTrue: [ first = origFirst
				ifTrue: [ validationFailureReason := 'New first name matches current name'.
					validArguments := false ]
				ifFalse: [ validArguments := true ] ]
		ifFalse: [ validationFailureReason := 'Invalid first name'.
			validArguments := false ]