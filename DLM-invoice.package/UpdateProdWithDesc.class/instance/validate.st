private - validation
validate
	"validate the command"

	self
		validateKey;
		validateDesc.
	isValid := keyIsValid
		ifTrue: [ descIsValid ]
		ifFalse: [ false ].
	validationError := keyValidationError
		ifEmpty: [ descValidationError ifEmpty: [ '' ] ]