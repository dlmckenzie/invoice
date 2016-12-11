private - validation
validateKey
	"validate that product key exists"

	keyIsValid := (Application products keyIsUnique: key) not.
	keyValidationFailureReason := keyIsValid
		ifTrue: [ String empty ]
		ifFalse: [ 'Product key does not currently exist' ]