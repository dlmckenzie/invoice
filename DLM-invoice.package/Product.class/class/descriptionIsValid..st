validation
descriptionIsValid: aString
	"validate that product name is valid"

	aString isString
		ifFalse: [ ^ false ]
		ifTrue: [ aString isEmptyOrNil
				ifTrue: [ ^ false ]
				ifFalse: [ ^ true ] ]