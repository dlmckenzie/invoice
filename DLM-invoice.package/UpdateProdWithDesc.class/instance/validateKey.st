private - validation
validateKey
	"validate that a product with this key exists"

	keyIsValid := origProd isNotNil.
	keyValidationFailureReason := keyIsValid
		ifTrue: [ '' ]
		ifFalse: [ 'product key not found.' ]