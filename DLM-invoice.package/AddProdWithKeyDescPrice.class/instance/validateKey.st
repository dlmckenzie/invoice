private - validation
validateKey
	"validates the product key"

	keyIsValid := prod keyIsValid
		ifTrue: [ (Application products prodExistsForKey: key) not ]
		ifFalse: [ false ].
	keyValidationError := prod keyValidationError
		ifEmpty: [ (Application products prodExistsForKey: key) not
				ifTrue: [ '' ]
				ifFalse: [ 'Product key not unique' ] ]