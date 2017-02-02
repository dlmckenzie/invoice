private - validation
validateKey
	"validate that product key exists"

	keyIsValid := prod isNotNil.
	keyValidationError := keyIsValid
		ifTrue: [ String empty ]
		ifFalse: [ 'Product key ''', key, ''' does not exist' ]