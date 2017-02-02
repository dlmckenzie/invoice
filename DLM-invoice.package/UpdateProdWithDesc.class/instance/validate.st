private - validation
validate
	"validate the command"

	self
		validateKey;
		validateDesc.
	validArguments := keyIsValid
		ifTrue: [ descIsValid ]
		ifFalse: [ false ].
	validationError := keyValidationError
		ifEmpty: [ descValidationError ifEmpty: [ '' ] ]