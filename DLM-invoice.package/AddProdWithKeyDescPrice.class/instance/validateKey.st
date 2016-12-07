private - validation
validateKey
	"validates the product key"

	keyIsValid := prod keyIsValid
		ifTrue: [ Application products keyIsUnique: key ].
	keyValidationError := prod keyValidationError
		ifEmpty: [ (Application products keyIsUnique: key)
				ifTrue: [ '' ]
				ifFalse: [ 'Product key not unique' ] ]