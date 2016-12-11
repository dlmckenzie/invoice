private - validation
validateKey
	"validate that product key exists"

	keyIsValid := prod isNotNil.
	keyValidationFailureReason := keyIsValid
		ifTrue: [ String empty ]
		ifFalse: [ 'Product with specified key does not exist' ]