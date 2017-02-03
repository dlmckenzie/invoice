private - validation
validate
	"validate the command"

	self
		validateCust;
		validateLast.
	isValid := custIsValid
		ifTrue: [ lastIsValid ]
		ifFalse: [ false ].
	validationError := custValidationError
		ifEmpty: [ lastValidationFailureReason ifEmpty: [ '' ] ]