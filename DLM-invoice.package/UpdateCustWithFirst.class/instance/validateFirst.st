private - validation
validateFirst
	"comment"

	cust name firstIsValid
		ifTrue: [ first = origFirst
				ifTrue: [ validationError := 'New first name matches current name'.
					isValid := false ]
				ifFalse: [ isValid := true ] ]
		ifFalse: [ validationError := 'Invalid first name'.
			isValid := false ]