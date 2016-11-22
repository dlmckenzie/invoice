private - validation
validateKey
	"validate product key"

	keyIsValid := key isEmptyOrNil not.
	keyValidationError := keyIsValid
		ifTrue: [ '' ]
		ifFalse: [ 'Product key may not be empty' ]