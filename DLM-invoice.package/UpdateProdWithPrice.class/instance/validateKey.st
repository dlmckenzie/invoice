private - validation
validateKey
	"validate that a product with this key exists"

	keyIsValid := origProd isNotNil.
	keyValidationError := keyIsValid
		ifTrue: [ '' ]
		ifFalse: [ 'product key not found.' ]