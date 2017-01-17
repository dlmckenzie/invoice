private - validation
validate
	"validate the command"

	self
		validateCust;
		validateLast.
	validArguments := custIsValid
		ifTrue: [ lastIsValid ]
		ifFalse: [ false ].
	validationError := custValidationFailureReason
		ifEmpty: [ lastValidationFailureReason ifEmpty: [ '' ] ]