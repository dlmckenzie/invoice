private - validation
validateCust
	"validate that a customer with this id exists"

	custIsValid := origCust isNotNil.
	custValidationFailureReason := custIsValid
		ifTrue: [ '' ]
		ifFalse: [ 'Customer id not found.' ]