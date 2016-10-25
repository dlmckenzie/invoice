private-validation
validateLast
	"comment"

	cust name lastIsValid
		ifTrue: [ last = origLast
				ifTrue: [ validationFailureReason := 'New last name matches current name'.
					validArguments := false ]
				ifFalse: [ validArguments := true ] ]
		ifFalse: [ validationFailureReason := 'Invalid last name'.
			validArguments := false ]