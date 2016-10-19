private-validation
validateLast
	"validate last name"

	lastIsValid := last isString
		ifFalse: [ false ]
		ifTrue: [ last isEmptyOrNil
				ifTrue: [ false ]
				ifFalse: [ (last includesSubstring: ',')
						ifTrue: [ false ]
						ifFalse: [ true ] ] ]