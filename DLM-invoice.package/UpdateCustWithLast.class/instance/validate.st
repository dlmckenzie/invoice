private - validation
validate
	"validate command"

	self
		validateCust;
		validateLast.
	validArguments := custIsValid
		ifTrue: [ lastIsValid ].
	validationError := custValidationFailureReason
		ifEmpty: [ lastValidationFailureReason ifEmpty: [ '' ] ].

	"validArguments := true.
	self validateCust.
	cust ifNotNil: [ self validateLast ]"