private-validation
validateLast
	"comment"

	cust name lastIsValid
		ifTrue: [ last = origLast
				ifTrue: [ validationError := 'New last name matches current name'.
					validArguments := false ]
				ifFalse: [ validArguments := true ] ]
		ifFalse: [ validationError := 'Invalid last name'.
			validArguments := false ]