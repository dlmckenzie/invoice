private - validation
validateLast
	"validate last name"

	last isString
		ifFalse: [ lastIsValid := false.
			lastValidationError := 'Last name must be a string.' ]
		ifTrue: [ last isEmptyOrNil
				ifTrue: [ lastIsValid := false.
					lastValidationError := 'Last name may not be empty.' ]
				ifFalse: [ (last includesSubstring: ',')
						ifTrue: [ lastIsValid := false.
							lastValidationError := 'Last name may not contain a comma.' ]
						ifFalse: [ lastIsValid := true.
							lastValidationError := '' ] ] ]