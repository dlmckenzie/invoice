validation
validateLast
	"validate last name"

	last isString
		ifFalse: [ lastIsValid := false ]
		ifTrue: [ last isEmptyOrNil
				ifTrue: [ lastIsValid := false ]
				ifFalse: [ (last includesSubstring: ',')
						ifTrue: [ lastIsValid := false ]
						ifFalse: [ lastIsValid := true ] ] ]