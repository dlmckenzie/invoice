private - validation
validateLast
	"comment"

	lastIsValid := newCust name lastIsValid.
	cust
		ifNotNil: [ cust name lastIsValid
				ifTrue: [ last = origLast
						ifTrue: [ lastValidationFailureReason := 'New last name matches current name'.
							validArguments := false ]
						ifFalse: [ validArguments := true.
							lastValidationFailureReason := '' ] ]
				ifFalse: [ lastValidationFailureReason := 'Invalid last name'.
					validArguments := false ] ]
		ifNil: [ validArguments := false ]