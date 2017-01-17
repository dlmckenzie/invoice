private - validation
validate
	"validate command"

	self
		validateKey;
		validateDesc.
	validArguments := keyIsValid
		ifTrue: [ descIsValid ]
		ifFalse: [false].
	validationError := keyValidationFailureReason
		ifEmpty: [ descValidationFailureReason ifEmpty: [ '' ] ]