private-validation
validateFirst
	"comment"

	cust name firstIsValid
		ifTrue: [ first = origFirst
				ifTrue: [ validationError := 'New first name matches current name'.
					validArguments := false ]
				ifFalse: [ validArguments := true ] ]
		ifFalse: [ validationError := 'Invalid first name'.
			validArguments := false ]