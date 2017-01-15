private - validation
validateDesc
	descIsValid := newProd descriptionIsValid.
	descValidationFailureReason := descIsValid
		ifTrue: [ '' ]
		ifFalse: [ newProd descriptionValidationError ]