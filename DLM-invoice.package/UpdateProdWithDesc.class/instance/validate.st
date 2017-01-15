private - validation
validate
	"validate command"
	
	self
		validateKey;
		validateDesc.
	validArguments := keyIsValid
		ifTrue: [ descIsValid ].
	validationError := keyValidationFailureReason
		ifEmpty: [ descValidationFailureReason ifEmpty: [ '' ] ]