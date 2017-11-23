private - validation
validateKey
	"validates the product key"

	keyIsValid := prod keyIsValid
		ifTrue: [ (Application domain products prodExistsForKey: key) not ]
		ifFalse: [ false ].
	keyValidationError := prod keyValidationError
		ifEmpty: [ (Application domain products prodExistsForKey: key) not
				ifTrue: [ '' ]
				ifFalse: [ 'Product key not unique' ] ]