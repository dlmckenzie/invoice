private - validation
validateCust
	"validate that a customer with this id exists"

	custIsValid := origCust isNotNil.
	custValidationError := custIsValid
		ifTrue: [ '' ]
		ifFalse: [ 'Customer id not found.' ]